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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_DCertsOf_92 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
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
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
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
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4096
d_HasCollateralInputs'45'TopLevelTx_330 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_330
du_HasCollateralInputs'45'TopLevelTx_330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4096
du_HasCollateralInputs'45'TopLevelTx_330
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4614
-- _.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506
d_HasCurrentTreasury'45'Tx_342 ~v0
  = du_HasCurrentTreasury'45'Tx_342
du_HasCurrentTreasury'45'Tx_342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4506
du_HasCurrentTreasury'45'Tx_342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4714
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4688
-- _.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4586
d_HasIsValidFlag'45'Tx_438 ~v0 = du_HasIsValidFlag'45'Tx_438
du_HasIsValidFlag'45'Tx_438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4586
du_HasIsValidFlag'45'Tx_438
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4608
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
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4670
-- _.HasMintedValue-Tx
d_HasMintedValue'45'Tx_468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286
d_HasMintedValue'45'Tx_468 ~v0 = du_HasMintedValue'45'Tx_468
du_HasMintedValue'45'Tx_468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4286
du_HasMintedValue'45'Tx_468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4658
-- _.HasPParams
d_HasPParams_482 a0 a1 a2 = ()
-- _.HasRedeemers-Tx
d_HasRedeemers'45'Tx_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074
d_HasRedeemers'45'Tx_496 ~v0 = du_HasRedeemers'45'Tx_496
du_HasRedeemers'45'Tx_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4074
du_HasRedeemers'45'Tx_496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4612
-- _.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266
d_HasReferenceInputs'45'Tx_504 ~v0
  = du_HasReferenceInputs'45'Tx_504
du_HasReferenceInputs'45'Tx_504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4266
du_HasReferenceInputs'45'Tx_504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4654
-- _.HasSize-Tx
d_HasSize'45'Tx_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186
d_HasSize'45'Tx_538 ~v0 = du_HasSize'45'Tx_538
du_HasSize'45'Tx_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4186
du_HasSize'45'Tx_538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4604
-- _.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246
d_HasSpendInputs'45'Tx_544 ~v0 = du_HasSpendInputs'45'Tx_544
du_HasSpendInputs'45'Tx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4246
du_HasSpendInputs'45'Tx_544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4144
d_HasSubTransactions'45'TopLevelTx_560 ~v0
  = du_HasSubTransactions'45'TopLevelTx_560
du_HasSubTransactions'45'TopLevelTx_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4144
du_HasSubTransactions'45'TopLevelTx_560
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4618
-- _.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4120
d_HasTxFees'45'TopLevelTx_582 ~v0 = du_HasTxFees'45'TopLevelTx_582
du_HasTxFees'45'TopLevelTx_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4120
du_HasTxFees'45'TopLevelTx_582
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4616
-- _.HasTxId-Tx
d_HasTxId'45'Tx_588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166
d_HasTxId'45'Tx_588 ~v0 = du_HasTxId'45'Tx_588
du_HasTxId'45'Tx_588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4166
du_HasTxId'45'Tx_588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4684
-- _.HasTxOuts-Tx
d_HasTxOuts'45'Tx_596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466
d_HasTxOuts'45'Tx_596 ~v0 = du_HasTxOuts'45'Tx_596
du_HasTxOuts'45'Tx_596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4466
du_HasTxOuts'45'Tx_596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706
-- _.HasUTxO
d_HasUTxO_606 a0 a1 a2 = ()
-- _.HasValidInterval-Tx
d_HasValidInterval'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226
d_HasValidInterval'45'Tx_614 ~v0 = du_HasValidInterval'45'Tx_614
du_HasValidInterval'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4226
du_HasValidInterval'45'Tx_614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4646
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
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
      (coe v0)
-- _.Value
d_Value_986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_986 = erased
-- _.coin
d_coin_1030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_coin_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- _.inject
d_inject_1090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_inject_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
-- _.netId
d_netId_1146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1146 ~v0 = du_netId_1146
du_netId_1146 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1146
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
-- _.txOutToValue
d_txOutToValue_1218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_1218 ~v0 = du_txOutToValue_1218
du_txOutToValue_1218 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_1218
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
-- _.GovProposal.action
d_action_1402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_974
d_action_1402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1088
      (coe v0)
-- _.GovProposal.anchor
d_anchor_1404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1098
      (coe v0)
-- _.GovProposal.deposit
d_deposit_1406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Integer
d_deposit_1406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1094
      (coe v0)
-- _.GovProposal.policy
d_policy_1408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  Maybe AgdaAny
d_policy_1408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1092
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_1410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  AgdaAny
d_prevAction_1410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1090
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_1412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1096
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_1506 a0 = ()
-- _.HasDCerts.DCertsOf
d_DCertsOf_1756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_DCertsOf_1756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_PParamsOf_1804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_744
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3860
      (coe v0)
-- _.PParams.Emax
d_Emax_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_Emax_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_474
      (coe v0)
-- _.PParams.a
d_a_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_a_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_444 (coe v0)
-- _.PParams.a0
d_a0_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_478
      (coe v0)
-- _.PParams.b
d_b_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_b_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_446 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMaxTermLength_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_490
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_ccMinSize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_488
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_coinsPerUTxOByte_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_458
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_collateralPercentage_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_480
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_690
d_costmdlsAssoc_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_482
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_drepActivity_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_498
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_drepDeposit_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_496
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_250
d_drepThresholds_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_486
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionDeposit_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_494
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_govActionLifetime_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_492
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_keyDeposit_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_448
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosCommitteeSize_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_436
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosDiffusionPeriod_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_430
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosHeaderPeriod_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_426
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_leiosMaxEBExUnits_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_440
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBSize_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_432
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxEBTxsSize_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_434
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_442
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_438
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_leiosVotingPeriod_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_428
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_maxBlockExUnits_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_418
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxBlockSize_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_410
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxCollateralInputs_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_422
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxHeaderSize_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_414
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerBlock_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_466
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxRefScriptSizePerTx_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_464
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_maxTxExUnits_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_416
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxTxSize_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_412
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_maxValSize_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_420
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_462
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minPoolCost_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_452
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_minUTxOValue_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_472
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_454
      (coe v0)
-- _.PParams.nopt
d_nopt_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_nopt_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_476
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  Integer
d_poolDeposit_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_450
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_294
d_poolThresholds_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_484
      (coe v0)
-- _.PParams.prices
d_prices_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  AgdaAny
d_prices_2084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_460
      (coe v0)
-- _.PParams.pv
d_pv_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_424
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_470
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_468
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_456
      (coe v0)
-- _.Tx.isValid
d_isValid_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_isValid_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3896
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Maybe AgdaAny
d_txAuxData_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3898
      (coe v0)
-- _.Tx.txBody
d_txBody_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3874
d_txBody_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
      (coe v0)
-- _.Tx.txSize
d_txSize_2588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Integer
d_txSize_2588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3894
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3876
d_txWitnesses_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3892
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.DCert
d_DCert_2716 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo._.HasPState
d_HasPState_2846 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Utxo._.HasPools-PState
d_HasPools'45'PState_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1758
d_HasPools'45'PState_2858 ~v0 ~v1 = du_HasPools'45'PState_2858
du_HasPools'45'PState_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1758
du_HasPools'45'PState_2858
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_2010
-- Ledger.Dijkstra.Specification.Utxo._.PState
d_PState_2916 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo._.PStateOf
d_PStateOf_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_PStateOf_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1906
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.Pools
d_Pools_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  ()
d_Pools_2928 = erased
-- Ledger.Dijkstra.Specification.Utxo._.HasPState.PStateOf
d_PStateOf_3128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_PStateOf_3128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1906
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.PState.deposits
d_deposits_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1590
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.PState.fPools
d_fPools_3158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1586
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.PState.pools
d_pools_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.PState.retiring
d_retiring_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1588
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.evalP2Scripts
d_evalP2Scripts_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_3214 v0 ~v1 = du_evalP2Scripts_3214 v0
du_evalP2Scripts_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3602
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.totalExUnits
d_totalExUnits_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_totalExUnits_3230 v0 ~v1 v2 = du_totalExUnits_3230 v0 v2
du_totalExUnits_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
du_totalExUnits_3230 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
              (let v4
                     = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
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
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                   (coe v0))))))
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                             (coe v0)))))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                          (coe v0))))
                 (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4082
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4612)
                    v3))))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                           (coe v0))))))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                     (coe v0)))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_462
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                  (coe v0))))
         (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4014
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3892
               (coe v1))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
            (coe v1)))
-- Ledger.Dijkstra.Specification.Utxo.totalRefScriptsSize
d_totalRefScriptsSize_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  Integer
d_totalRefScriptsSize_3246 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3306
         (coe v1))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4782
         (coe v0) (coe v3) (coe v2))
-- Ledger.Dijkstra.Specification.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_3254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  Integer
d_utxoEntrySizeWithoutVal_3254 ~v0
  = du_utxoEntrySizeWithoutVal_3254
du_utxoEntrySizeWithoutVal_3254 :: Integer
du_utxoEntrySizeWithoutVal_3254 = coe (8 :: Integer)
-- Ledger.Dijkstra.Specification.Utxo.utxoEntrySize
d_utxoEntrySize_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_3256 v0 ~v1 v2 = du_utxoEntrySize_3256 v0 v2
du_utxoEntrySize_3256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_3256 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    addInt (coe (8 :: Integer))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                          (coe v0))
                       v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv
d_UTxOEnv_3260 a0 a1 = ()
data T_UTxOEnv_3260
  = C_constructor_3290 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.slot
d_slot_3276 :: T_UTxOEnv_3260 -> AgdaAny
d_slot_3276 v0
  = case coe v0 of
      C_constructor_3290 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.pparams
d_pparams_3278 ::
  T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_3278 v0
  = case coe v0 of
      C_constructor_3290 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.treasury
d_treasury_3280 :: T_UTxOEnv_3260 -> Integer
d_treasury_3280 v0
  = case coe v0 of
      C_constructor_3290 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.utxo₀
d_utxo'8320'_3282 ::
  T_UTxOEnv_3260 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3282 v0
  = case coe v0 of
      C_constructor_3290 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.pState₀
d_pState'8320'_3284 ::
  T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_pState'8320'_3284 v0
  = case coe v0 of
      C_constructor_3290 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.allScripts
d_allScripts_3286 ::
  T_UTxOEnv_3260 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3286 v0
  = case coe v0 of
      C_constructor_3290 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.legacyMode
d_legacyMode_3288 :: T_UTxOEnv_3260 -> Bool
d_legacyMode_3288 v0
  = case coe v0 of
      C_constructor_3290 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv
d_SubUTxOEnv_3292 a0 a1 = ()
data T_SubUTxOEnv_3292
  = C_constructor_3326 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
                       [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] Bool
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.slot
d_slot_3310 :: T_SubUTxOEnv_3292 -> AgdaAny
d_slot_3310 v0
  = case coe v0 of
      C_constructor_3326 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.pparams
d_pparams_3312 ::
  T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318
d_pparams_3312 v0
  = case coe v0 of
      C_constructor_3326 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.treasury
d_treasury_3314 :: T_SubUTxOEnv_3292 -> Integer
d_treasury_3314 v0
  = case coe v0 of
      C_constructor_3326 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.utxo₀
d_utxo'8320'_3316 ::
  T_SubUTxOEnv_3292 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3316 v0
  = case coe v0 of
      C_constructor_3326 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.pState₀
d_pState'8320'_3318 ::
  T_SubUTxOEnv_3292 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1574
d_pState'8320'_3318 v0
  = case coe v0 of
      C_constructor_3326 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.prevDCerts
d_prevDCerts_3320 ::
  T_SubUTxOEnv_3292 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1494]
d_prevDCerts_3320 v0
  = case coe v0 of
      C_constructor_3326 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.allScripts
d_allScripts_3322 ::
  T_SubUTxOEnv_3292 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3322 v0
  = case coe v0 of
      C_constructor_3326 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_3324 :: T_SubUTxOEnv_3292 -> Bool
d_isTopLevelValid_3324 v0
  = case coe v0 of
      C_constructor_3326 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState
d_UTxOState_3328 a0 a1 = ()
data T_UTxOState_3328
  = C_'10214'_'44'_'44'_'10215''7512'_3342 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           Integer Integer
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.utxo
d_utxo_3336 ::
  T_UTxOState_3328 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3336 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3342 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.fees
d_fees_3338 :: T_UTxOState_3328 -> Integer
d_fees_3338 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3342 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.donations
d_donations_3340 :: T_UTxOState_3328 -> Integer
d_donations_3340 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3342 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.HasUTxOState
d_HasUTxOState_3348 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_3348
  = C_constructor_3358 (AgdaAny -> T_UTxOState_3328)
-- Ledger.Dijkstra.Specification.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3356 ::
  T_HasUTxOState_3348 -> AgdaAny -> T_UTxOState_3328
d_UTxOStateOf_3356 v0
  = case coe v0 of
      C_constructor_3358 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.UTxOStateOf
d_UTxOStateOf_3362 ::
  T_HasUTxOState_3348 -> AgdaAny -> T_UTxOState_3328
d_UTxOStateOf_3362 v0 = coe d_UTxOStateOf_3356 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag
d_HasIsTopLevelValidFlag_3368 a0 a1 a2 a3 = ()
newtype T_HasIsTopLevelValidFlag_3368
  = C_constructor_3378 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag.IsTopLevelValidFlagOf
d_IsTopLevelValidFlagOf_3376 ::
  T_HasIsTopLevelValidFlag_3368 -> AgdaAny -> Bool
d_IsTopLevelValidFlagOf_3376 v0
  = case coe v0 of
      C_constructor_3378 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.IsTopLevelValidFlagOf
d_IsTopLevelValidFlagOf_3382 ::
  T_HasIsTopLevelValidFlag_3368 -> AgdaAny -> Bool
d_IsTopLevelValidFlagOf_3382 v0
  = coe d_IsTopLevelValidFlagOf_3376 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode
d_HasLegacyMode_3388 a0 a1 a2 a3 = ()
newtype T_HasLegacyMode_3388 = C_constructor_3398 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode.LegacyModeOf
d_LegacyModeOf_3396 :: T_HasLegacyMode_3388 -> AgdaAny -> Bool
d_LegacyModeOf_3396 v0
  = case coe v0 of
      C_constructor_3398 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.LegacyModeOf
d_LegacyModeOf_3402 :: T_HasLegacyMode_3388 -> AgdaAny -> Bool
d_LegacyModeOf_3402 v0 = coe d_LegacyModeOf_3396 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool
d_HasScriptPool_3408 a0 a1 a2 a3 = ()
newtype T_HasScriptPool_3408
  = C_constructor_3418 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool.ScriptPoolOf
d_ScriptPoolOf_3416 ::
  T_HasScriptPool_3408 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptPoolOf_3416 v0
  = case coe v0 of
      C_constructor_3418 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.ScriptPoolOf
d_ScriptPoolOf_3422 ::
  T_HasScriptPool_3408 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptPoolOf_3422 v0 = coe d_ScriptPoolOf_3416 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasDataPool
d_HasDataPool_3428 a0 a1 a2 a3 = ()
newtype T_HasDataPool_3428
  = C_constructor_3438 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Utxo.HasDataPool.DataPoolOf
d_DataPoolOf_3436 ::
  T_HasDataPool_3428 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DataPoolOf_3436 v0
  = case coe v0 of
      C_constructor_3438 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.DataPoolOf
d_DataPoolOf_3442 ::
  T_HasDataPool_3428 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DataPoolOf_3442 v0 = coe d_DataPoolOf_3436 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot
d_HasSlot_3448 a0 a1 a2 a3 = ()
newtype T_HasSlot_3448 = C_constructor_3458 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot.SlotOf
d_SlotOf_3456 :: T_HasSlot_3448 -> AgdaAny -> AgdaAny
d_SlotOf_3456 v0
  = case coe v0 of
      C_constructor_3458 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.SlotOf
d_SlotOf_3462 :: T_HasSlot_3448 -> AgdaAny -> AgdaAny
d_SlotOf_3462 v0 = coe d_SlotOf_3456 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot-UTxOEnv
d_HasSlot'45'UTxOEnv_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_HasSlot_3448
d_HasSlot'45'UTxOEnv_3464 ~v0 ~v1 = du_HasSlot'45'UTxOEnv_3464
du_HasSlot'45'UTxOEnv_3464 :: T_HasSlot_3448
du_HasSlot'45'UTxOEnv_3464
  = coe C_constructor_3458 (coe (\ v0 -> d_slot_3276 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'UTxOEnv_3466 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_3466
du_HasPParams'45'UTxOEnv_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'UTxOEnv_3466
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_746
      (coe (\ v0 -> d_pparams_3278 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasTreasury-UTxOEnv
d_HasTreasury'45'UTxOEnv_3468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'UTxOEnv_3468 ~v0 ~v1
  = du_HasTreasury'45'UTxOEnv_3468
du_HasTreasury'45'UTxOEnv_3468 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'UTxOEnv_3468
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_100
      (coe (\ v0 -> d_treasury_3280 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv
d_HasUTxO'45'UTxOEnv_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852
d_HasUTxO'45'UTxOEnv_3470 ~v0 ~v1 = du_HasUTxO'45'UTxOEnv_3470
du_HasUTxO'45'UTxOEnv_3470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852
du_HasUTxO'45'UTxOEnv_3470
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3862
      (coe (\ v0 -> d_utxo'8320'_3282 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool-UTxOEnv
d_HasScriptPool'45'UTxOEnv_3472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_HasScriptPool_3408
d_HasScriptPool'45'UTxOEnv_3472 ~v0 ~v1
  = du_HasScriptPool'45'UTxOEnv_3472
du_HasScriptPool'45'UTxOEnv_3472 :: T_HasScriptPool_3408
du_HasScriptPool'45'UTxOEnv_3472
  = coe C_constructor_3418 (coe (\ v0 -> d_allScripts_3286 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasLegacyMode-UTxOEnv
d_HasLegacyMode'45'UTxOEnv_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_HasLegacyMode_3388
d_HasLegacyMode'45'UTxOEnv_3474 ~v0 ~v1
  = du_HasLegacyMode'45'UTxOEnv_3474
du_HasLegacyMode'45'UTxOEnv_3474 :: T_HasLegacyMode_3388
du_HasLegacyMode'45'UTxOEnv_3474
  = coe C_constructor_3398 (coe (\ v0 -> d_legacyMode_3288 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPState-UTxOEnv
d_HasPState'45'UTxOEnv_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898
d_HasPState'45'UTxOEnv_3476 ~v0 ~v1 = du_HasPState'45'UTxOEnv_3476
du_HasPState'45'UTxOEnv_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898
du_HasPState'45'UTxOEnv_3476
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1908
      (coe (\ v0 -> d_pState'8320'_3284 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasSlot-SubUTxOEnv
d_HasSlot'45'SubUTxOEnv_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_HasSlot_3448
d_HasSlot'45'SubUTxOEnv_3478 ~v0 ~v1
  = du_HasSlot'45'SubUTxOEnv_3478
du_HasSlot'45'SubUTxOEnv_3478 :: T_HasSlot_3448
du_HasSlot'45'SubUTxOEnv_3478
  = coe C_constructor_3458 (coe (\ v0 -> d_slot_3310 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPParams-SubUTxOEnv
d_HasPParams'45'SubUTxOEnv_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
d_HasPParams'45'SubUTxOEnv_3480 ~v0 ~v1
  = du_HasPParams'45'SubUTxOEnv_3480
du_HasPParams'45'SubUTxOEnv_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_736
du_HasPParams'45'SubUTxOEnv_3480
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_746
      (coe (\ v0 -> d_pparams_3312 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasTreasury-SubUTxOEnv
d_HasTreasury'45'SubUTxOEnv_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'SubUTxOEnv_3482 ~v0 ~v1
  = du_HasTreasury'45'SubUTxOEnv_3482
du_HasTreasury'45'SubUTxOEnv_3482 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'SubUTxOEnv_3482
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_100
      (coe (\ v0 -> d_treasury_3314 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-SubUTxOEnv
d_HasUTxO'45'SubUTxOEnv_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852
d_HasUTxO'45'SubUTxOEnv_3484 ~v0 ~v1
  = du_HasUTxO'45'SubUTxOEnv_3484
du_HasUTxO'45'SubUTxOEnv_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852
du_HasUTxO'45'SubUTxOEnv_3484
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3862
      (coe (\ v0 -> d_utxo'8320'_3316 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag-SubUTxOEnv
d_HasIsTopLevelValidFlag'45'SubUTxOEnv_3486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_HasIsTopLevelValidFlag_3368
d_HasIsTopLevelValidFlag'45'SubUTxOEnv_3486 ~v0 ~v1
  = du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3486
du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3486 ::
  T_HasIsTopLevelValidFlag_3368
du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3486
  = coe
      C_constructor_3378 (coe (\ v0 -> d_isTopLevelValid_3324 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool-SubUTxOEnv
d_HasScriptPool'45'SubUTxOEnv_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_HasScriptPool_3408
d_HasScriptPool'45'SubUTxOEnv_3488 ~v0 ~v1
  = du_HasScriptPool'45'SubUTxOEnv_3488
du_HasScriptPool'45'SubUTxOEnv_3488 :: T_HasScriptPool_3408
du_HasScriptPool'45'SubUTxOEnv_3488
  = coe C_constructor_3418 (coe (\ v0 -> d_allScripts_3322 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPState-SubUTxOEnv
d_HasPState'45'SubUTxOEnv_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898
d_HasPState'45'SubUTxOEnv_3490 ~v0 ~v1
  = du_HasPState'45'SubUTxOEnv_3490
du_HasPState'45'SubUTxOEnv_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1898
du_HasPState'45'SubUTxOEnv_3490
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1908
      (coe (\ v0 -> d_pState'8320'_3318 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasDCerts-SubUTxOEnv
d_HasDCerts'45'SubUTxOEnv_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326
d_HasDCerts'45'SubUTxOEnv_3492 ~v0 ~v1
  = du_HasDCerts'45'SubUTxOEnv_3492
du_HasDCerts'45'SubUTxOEnv_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4326
du_HasDCerts'45'SubUTxOEnv_3492
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_4336
      (coe (\ v0 -> d_prevDCerts_3320 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852
d_HasUTxO'45'UTxOState_3494 ~v0 ~v1 = du_HasUTxO'45'UTxOState_3494
du_HasUTxO'45'UTxOState_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3852
du_HasUTxO'45'UTxOState_3494
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3862
      (coe (\ v0 -> d_utxo_3336 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasFee-UTxOState
d_HasFee'45'UTxOState_3496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
d_HasFee'45'UTxOState_3496 ~v0 ~v1 = du_HasFee'45'UTxOState_3496
du_HasFee'45'UTxOState_3496 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
du_HasFee'45'UTxOState_3496
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_60
      (coe (\ v0 -> d_fees_3338 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasDonations-UTxOState
d_HasDonations'45'UTxOState_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'UTxOState_3498 ~v0 ~v1
  = du_HasDonations'45'UTxOState_3498
du_HasDonations'45'UTxOState_3498 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
du_HasDonations'45'UTxOState_3498
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_40
      (coe (\ v0 -> d_donations_3340 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_3500 ~v0 ~v1 = du_HasCast'45'UTxOEnv_3500
du_HasCast'45'UTxOEnv_3500 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_3500
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
                                 (3260 :: Integer) (1252473578754917138 :: Integer)
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
                                    (3260 :: Integer) (1252473578754917138 :: Integer)
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
                                       (3260 :: Integer) (1252473578754917138 :: Integer)
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
                                          (3260 :: Integer) (1252473578754917138 :: Integer)
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
                                             (3260 :: Integer) (1252473578754917138 :: Integer)
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
                                             (2916 :: Integer) (1252473578754917138 :: Integer)
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
                                                (3260 :: Integer) (1252473578754917138 :: Integer)
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
                                                   (3260 :: Integer)
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
         (coe C_constructor_3290))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-SubUTxOEnv
d_HasCast'45'SubUTxOEnv_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubUTxOEnv_3502 ~v0 ~v1
  = du_HasCast'45'SubUTxOEnv_3502
du_HasCast'45'SubUTxOEnv_3502 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubUTxOEnv_3502
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
                                 (3292 :: Integer) (1252473578754917138 :: Integer)
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
                                    (3292 :: Integer) (1252473578754917138 :: Integer)
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
                                       (3292 :: Integer) (1252473578754917138 :: Integer)
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
                                          (3292 :: Integer) (1252473578754917138 :: Integer)
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
                                             (3292 :: Integer) (1252473578754917138 :: Integer)
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
                                             (2916 :: Integer) (1252473578754917138 :: Integer)
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
                                                (3292 :: Integer) (1252473578754917138 :: Integer)
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
                                                            (2716 :: Integer)
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
                                                   (3292 :: Integer)
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
                                                      (3292 :: Integer)
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
         (coe C_constructor_3326))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_3504 ~v0 ~v1 = du_HasCast'45'UTxOState_3504
du_HasCast'45'UTxOState_3504 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_3504
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
                                 (3328 :: Integer) (1252473578754917138 :: Integer)
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
                                    (3328 :: Integer) (1252473578754917138 :: Integer)
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
                                       (3328 :: Integer) (1252473578754917138 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'10215''7512'_3342))
-- Ledger.Dijkstra.Specification.Utxo.outs
d_outs_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_3518 ~v0 ~v1 ~v2 v3 = du_outs_3518 v3
du_outs_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_3518 v0
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
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4174
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4684)
                 v0)
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
         v0)
-- Ledger.Dijkstra.Specification.Utxo.balance
d_balance_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_3524 v0 ~v1 v2 = du_balance_3524 v0 v2
du_balance_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_3524 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0)))
      (coe (\ v2 -> v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_986
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724)
         (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.cbalance
d_cbalance_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_3530 v0 ~v1 v2 = du_cbalance_3530 v0 v2
du_cbalance_3530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_3530 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
      (coe du_balance_3524 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.minfee
d_minfee_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_minfee_3534 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txScriptFee_3298
               v1
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_460
                  (coe v2))
               (coe du_totalExUnits_3230 (coe v0) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_446
               (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Fees.du_scriptsCost_26
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
               (coe v0))
            (coe v2)
            (coe
               d_totalRefScriptsSize_3246 (coe v0) (coe v1) (coe v4) (coe v3))))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_444
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3894
            (coe v3)))
-- Ledger.Dijkstra.Specification.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_3542 v0 ~v1 = du_HasCoin'45'UTxO_3542 v0
du_HasCoin'45'UTxO_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_3542 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe du_cbalance_3530 (coe v0))
-- Ledger.Dijkstra.Specification.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3544 v0 ~v1
  = du_HasCoin'45'UTxOState_3544 v0
du_HasCoin'45'UTxOState_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3544 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt (coe du_cbalance_3530 (coe v0) (coe d_utxo_3336 (coe v1)))
                 (coe d_donations_3340 (coe v1)))
              (coe d_fees_3338 (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo.inInterval
d_inInterval_3550 a0 a1 a2 a3 = ()
data T_inInterval_3550
  = C_both_3558 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_3562 AgdaAny | C_upper_3566 AgdaAny | C_none_3568
-- Ledger.Dijkstra.Specification.Utxo.Dec-inInterval
d_Dec'45'inInterval_3570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_3570 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_3570 v0 v2 v3
du_Dec'45'inInterval_3570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_3570 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
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
                                                                                    C_both_3558
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
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
                                                         (coe C_lower_3562 v9))
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1428
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
                                                         (coe C_upper_3566 v9))
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
                                 (coe C_none_3568))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Utxo.coinPolicies
d_coinPolicies_3672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  [AgdaAny]
d_coinPolicies_3672 v0 ~v1 = du_coinPolicies_3672 v0
du_coinPolicies_3672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny]
du_coinPolicies_3672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0))
         (1 :: Integer))
-- Ledger.Dijkstra.Specification.Utxo.isAdaOnly
d_isAdaOnly_3674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  AgdaAny -> ()
d_isAdaOnly_3674 = erased
-- Ledger.Dijkstra.Specification.Utxo.collateralCheck
d_collateralCheck_3678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_3678 = erased
-- Ledger.Dijkstra.Specification.Utxo._.govProposalsDeposits
d_govProposalsDeposits_3696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074] ->
  Integer
d_govProposalsDeposits_3696 ~v0 ~v1 v2
  = du_govProposalsDeposits_3696 v2
du_govProposalsDeposits_3696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1074] ->
  Integer
du_govProposalsDeposits_3696 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_494
                 (coe v0))
              (coe v1)))
      (coe (0 :: Integer))
-- Ledger.Dijkstra.Specification.Utxo._.consumedTx
d_consumedTx_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedTx_3708 v0 ~v1 ~v2 ~v3 v4 v5
  = du_consumedTx_3708 v0 v4 v5
du_consumedTx_3708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedTx_3708 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                  (coe v0))))
         (coe
            du_balance_3524 (coe v0)
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                  v1)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4294
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4658)
            v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3964
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                  (coe v1)))))
-- Ledger.Dijkstra.Specification.Utxo._.consumed
d_consumed_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumed_3714 v0 ~v1 ~v2 v3 v4 = du_consumed_3714 v0 v3 v4
du_consumed_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumed_3714 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
      (coe du_consumedTx_3708 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2192
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4852
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo._.consumedBatch
d_consumedBatch_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedBatch_3720 v0 ~v1 ~v2 v3 v4
  = du_consumedBatch_3720 v0 v3 v4
du_consumedBatch_3720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedBatch_3720 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
      (coe du_consumed_3714 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
         (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0)))
         (\ v3 -> coe du_consumedTx_3708 (coe v0) (coe v3) (coe v2))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo._.consumedLegacy
d_consumedLegacy_3728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedLegacy_3728 v0 ~v1 ~v2 v3 v4
  = du_consumedLegacy_3728 v0 v3 v4
du_consumedLegacy_3728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedLegacy_3728 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
      (coe du_consumedTx_3708 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2192
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4626)
               v1)))
-- Ledger.Dijkstra.Specification.Utxo._.producedTx
d_producedTx_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_producedTx_3734 v0 ~v1 v2 ~v3 v4 = du_producedTx_3734 v0 v2 v4
du_producedTx_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
du_producedTx_3734 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                     (coe v0))))
            (coe du_balance_3524 (coe v0) (coe du_outs_3518 (coe v2)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                  (coe v0))
               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3970
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                     (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1468
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3990
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                     (coe v2))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0))
         (coe
            du_govProposalsDeposits_3696 v1
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3974
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Utxo._.produced
d_produced_3738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_produced_3738 v0 ~v1 v2 v3 v4 = du_produced_3738 v0 v2 v3 v4
du_produced_3738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
du_produced_3738 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                  (coe v0))))
         (coe du_producedTx_3734 (coe v0) (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3962
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                  (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2162
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
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
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4852
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.producedBatch
d_producedBatch_3744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_producedBatch_3744 v0 ~v1 v2 v3 v4
  = du_producedBatch_3744 v0 v2 v3 v4
du_producedBatch_3744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
du_producedBatch_3744 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
      (coe du_produced_3738 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_938
         (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0)))
         (coe du_producedTx_3734 (coe v0) (coe v1))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.producedLegacy
d_producedLegacy_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
d_producedLegacy_3752 v0 ~v1 v2 v3 v4
  = du_producedLegacy_3752 v0 v2 v3 v4
du_producedLegacy_3752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  AgdaAny
du_producedLegacy_3752 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                  (coe v0))))
         (coe du_producedTx_3734 (coe v0) (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3962
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                  (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2162
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2896
               (coe v0))
            (coe v1) (coe du_pools''_3762 (coe v2) (coe v3))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4626)
               v3)))
-- Ledger.Dijkstra.Specification.Utxo._._.pools'
d_pools''_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [AgdaAny]
d_pools''_3762 ~v0 ~v1 ~v2 v3 v4 = du_pools''_3762 v3 v4
du_pools''_3762 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [AgdaAny]
du_pools''_3762 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_regpool_1500 v4 v5
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
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4334
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4626))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
               (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo.allP2ScriptsWithContext
d_allP2ScriptsWithContext_3772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allP2ScriptsWithContext_3772 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         du_p2ScriptsWithContext_3782 (coe v0) (coe v1) (coe v2)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
         (coe v3))
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (coe
            du_p2ScriptsWithContext_3782 (coe v0) (coe v1) (coe v2)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.p2ScriptsWithContext
d_p2ScriptsWithContext_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_p2ScriptsWithContext_3782 v0 v1 v2 ~v3 v4 v5
  = du_p2ScriptsWithContext_3782 v0 v1 v2 v4 v5
du_p2ScriptsWithContext_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_p2ScriptsWithContext_3782 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3536
      (coe v0) (coe v1) (coe v3) (coe d_pparams_3278 (coe v2)) (coe v4)
      (coe d_utxo'8320'_3282 (coe v2)) (coe d_allScripts_3286 (coe v2))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3786 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3786 = C_UTXOS_3788
-- Ledger.Dijkstra.Specification.Utxo.UTXOS-premises
d_UTXOS'45'premises_3790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  T_UTxOEnv_3260 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOS'45'premises_3790 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3602
            v0
            (d_allP2ScriptsWithContext_3772
               (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3896
            (coe v3)))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3792 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3792
  = C_SUBUTXO_3818 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.SUBUTXO-premises
d_SUBUTXO'45'premises_3820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  T_SubUTxOEnv_3292 ->
  T_UTxOState_3328 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SUBUTXO'45'premises_3820 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                             (coe v0))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_588
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                          (coe d_utxo'8320'_3316 (coe v3)))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
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
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                (coe v0))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                (coe v0)))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_588
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                             (coe d_utxo'8320'_3316 (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4274
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4654)
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                   (coe v0))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                   (coe v0)))
                             (coe v5)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_588
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                (coe d_utxo_3336 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                        v2))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        du_Dec'45'inInterval_3570 (coe v0) (coe d_slot_3310 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3966
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4294
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4658)
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                            (coe v0))
                                         (mulInt
                                            (coe
                                               addInt (coe (160 :: Integer))
                                               (coe
                                                  du_utxoEntrySize_3256 (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5))))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_458
                                               (coe d_pparams_3312 (coe v3)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                 (coe
                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
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
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3300
                                            v1
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5))))
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_420
                                            (coe d_pparams_3312 (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                    (coe
                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v5)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                     (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_range_590
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
                                             v2)))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Prelude.du_'126''63'_48
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3976
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Prelude.du_'126''63'_48
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3978
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                (coe v2)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                             (coe d_treasury_3314 (coe v3)))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__3822 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__3822
  = C_UTXO_3850 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.UTXO-premises
d_UTXO'45'premises_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3280 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3870 ->
  T_UTxOEnv_3260 ->
  T_UTxOState_3328 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3852 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                             (coe v0))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_588
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                          (coe d_utxo'8320'_3282 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                     v2)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
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
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                (coe v0))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                (coe v0)))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_588
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                             (coe d_utxo'8320'_3282 (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4274
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4654)
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                   (coe v0))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                   (coe v0)))
                             (coe v5)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_588
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_596)
                                (coe d_utxo_3336 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4254
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4650)
                        v2))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        du_Dec'45'inInterval_3570 (coe v0) (coe d_slot_3276 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3966
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                           (d_minfee_3534
                              (coe v0) (coe v1) (coe d_pparams_3278 (coe v3)) (coe v2)
                              (coe d_utxo'8320'_3282 (coe v3)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3962
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4294
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4658)
                                    v2))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                       (coe v0)))
                                 (coe
                                    du_consumedBatch_3720 (coe v0) (coe v2)
                                    (coe d_utxo'8320'_3282 (coe v3)))
                                 (coe
                                    du_producedBatch_3744 (coe v0) (coe d_pparams_3278 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
                                       (coe d_pState'8320'_3284 (coe v3)))
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                       (coe d_legacyMode_3288 (coe v3))
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                             (coe v0)))
                                       (coe
                                          du_consumedLegacy_3728 (coe v0) (coe v2)
                                          (coe d_utxo'8320'_3282 (coe v3)))
                                       (coe
                                          du_producedLegacy_3752 (coe v0)
                                          (coe d_pparams_3278 (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1584
                                             (coe d_pState'8320'_3284 (coe v3)))
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3894
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_412
                                          (coe d_pparams_3278 (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                          (d_totalRefScriptsSize_3246
                                             (coe v0) (coe v1) (coe d_utxo'8320'_3282 (coe v3))
                                             (coe v2))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_464
                                             (coe d_pparams_3278 (coe v3))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8804''7497''7512''45'Dec_478
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                   (coe v0)))
                                             (coe du_totalExUnits_3230 (coe v0) (coe v2))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_416
                                                (coe d_pparams_3278 (coe v3))))
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
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                 (coe v0))))))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                           (coe v0)))))))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4014
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3892
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
                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
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
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                         (coe
                                                                                            v0))))))
                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_480
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_578
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2234
                                                                                   (coe v0)))))))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_580
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_4014
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3892
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3984
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
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
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                     (coe v0))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                     (coe v0))))
                                                            (coe d_utxo'8320'_3282 (coe v3))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
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
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                          (coe v0)))
                                                                    (coe v5)
                                                                    (coe
                                                                       du_coinPolicies_3672
                                                                       (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                  (coe v0))
                                                               (coe
                                                                  du_balance_3524 (coe v0)
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                              (coe v0))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                              (coe v0))))
                                                                     (coe
                                                                        d_utxo'8320'_3282 (coe v3))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
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
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1424
                                                                          (coe v0)))
                                                                    (coe v5)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                          (coe v0))
                                                                       (coe
                                                                          du_balance_3524 (coe v0)
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
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                      (coe v0))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                      (coe v0))))
                                                                             (coe
                                                                                d_utxo'8320'_3282
                                                                                (coe v3))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                                   (coe v2))))))))
                                                            (coe du_coinPolicies_3672 (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                            (mulInt
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3962
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_480
                                                                  (coe d_pparams_3278 (coe v3))))
                                                            (mulInt
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                     (coe v0))
                                                                  (coe
                                                                     du_balance_3524 (coe v0)
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                                 (coe v0))))
                                                                        (coe
                                                                           d_utxo'8320'_3282
                                                                           (coe v3))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
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
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1432
                                                                        (coe v0))
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1430
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3954
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
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
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2762
                                                                 (coe v0))
                                                              (mulInt
                                                                 (coe
                                                                    addInt (coe (160 :: Integer))
                                                                    (coe
                                                                       du_utxoEntrySize_3256
                                                                       (coe v0)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                          (coe v5))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_458
                                                                    (coe d_pparams_3278 (coe v3)))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                      (coe
                                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
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
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3300
                                                                 v1
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4724
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v5))))
                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_420
                                                                 (coe d_pparams_3278 (coe v3)))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                         (coe
                                                            MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
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
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                          (coe v0)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_258
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v5)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4474
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4706)
                                                                  v2)))
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                            (coe
                                                               MAlonzo.Code.Prelude.du_'126''63'_48
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3976
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1422
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Prelude.du_'126''63'_48
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3978
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3890
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                  (coe d_treasury_3280 (coe v3)))
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))))
