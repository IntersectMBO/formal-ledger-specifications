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
import qualified MAlonzo.Code.Axiom.Set.Rel
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
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Account
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
-- _.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_848 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_110 ~v0
  = du_Dec'45'InBalanceInterval_110
du_Dec'45'InBalanceInterval_110 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_848 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_110
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_876
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
-- _.DecEq-Credential
d_DecEq'45'Credential_136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v0)))
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
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v0)))
-- _.ExUnits
d_ExUnits_222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_222 = erased
-- _.GovProposal
d_GovProposal_248 a0 = ()
-- _.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_292 ~v0
  = du_HasAttrSize'45'BootstrapAddr_292
du_HasAttrSize'45'BootstrapAddr_292 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_292
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- _.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4316
d_HasBalanceIntervals'45'Tx_298 ~v0
  = du_HasBalanceIntervals'45'Tx_298
du_HasBalanceIntervals'45'Tx_298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4316
du_HasBalanceIntervals'45'Tx_298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4386
-- _.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_3862
d_HasCollateralInputs'45'TopLevelTx_322 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_322
du_HasCollateralInputs'45'TopLevelTx_322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_3862
du_HasCollateralInputs'45'TopLevelTx_322
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4364
-- _.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4276
d_HasCurrentTreasury'45'Tx_334 ~v0
  = du_HasCurrentTreasury'45'Tx_334
du_HasCurrentTreasury'45'Tx_334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4276
du_HasCurrentTreasury'45'Tx_334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4458
-- _.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4296
d_HasDirectDeposits'45'Tx_368 ~v0 = du_HasDirectDeposits'45'Tx_368
du_HasDirectDeposits'45'Tx_368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4296
du_HasDirectDeposits'45'Tx_368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4382
-- _.HasDonations-Tx
d_HasDonations'45'Tx_372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_372 ~v0 = du_HasDonations'45'Tx_372
du_HasDonations'45'Tx_372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4432
-- _.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4336
d_HasIsValidFlag'45'Tx_430 ~v0 = du_HasIsValidFlag'45'Tx_430
du_HasIsValidFlag'45'Tx_430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4336
du_HasIsValidFlag'45'Tx_430
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4358
-- _.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_452 ~v0 = du_HasMaybeNetworkId'45'Tx_452
du_HasMaybeNetworkId'45'Tx_452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4414
-- _.HasMintedValue-Tx
d_HasMintedValue'45'Tx_460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4056
d_HasMintedValue'45'Tx_460 ~v0 = du_HasMintedValue'45'Tx_460
du_HasMintedValue'45'Tx_460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4056
du_HasMintedValue'45'Tx_460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4402
-- _.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_472 ~v0
  = du_HasNetworkId'45'RewardAddress_472
du_HasNetworkId'45'RewardAddress_472 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_472
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- _.HasPParams
d_HasPParams_474 a0 a1 a2 = ()
-- _.HasRedeemers-Tx
d_HasRedeemers'45'Tx_488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3840
d_HasRedeemers'45'Tx_488 ~v0 = du_HasRedeemers'45'Tx_488
du_HasRedeemers'45'Tx_488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3840
du_HasRedeemers'45'Tx_488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4362
-- _.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4036
d_HasReferenceInputs'45'Tx_496 ~v0
  = du_HasReferenceInputs'45'Tx_496
du_HasReferenceInputs'45'Tx_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4036
du_HasReferenceInputs'45'Tx_496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4398
-- _.HasSize-Tx
d_HasSize'45'Tx_530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_3976
d_HasSize'45'Tx_530 ~v0 = du_HasSize'45'Tx_530
du_HasSize'45'Tx_530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_3976
du_HasSize'45'Tx_530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4354
-- _.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4016
d_HasSpendInputs'45'Tx_536 ~v0 = du_HasSpendInputs'45'Tx_536
du_HasSpendInputs'45'Tx_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4016
du_HasSpendInputs'45'Tx_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4394
-- _.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3910
d_HasSubTransactions'45'TopLevelTx_544 ~v0
  = du_HasSubTransactions'45'TopLevelTx_544
du_HasSubTransactions'45'TopLevelTx_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3910
du_HasSubTransactions'45'TopLevelTx_544
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4368
-- _.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_3886
d_HasTxFees'45'TopLevelTx_564 ~v0 = du_HasTxFees'45'TopLevelTx_564
du_HasTxFees'45'TopLevelTx_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_3886
du_HasTxFees'45'TopLevelTx_564
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4366
-- _.HasTxId-Tx
d_HasTxId'45'Tx_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3956
d_HasTxId'45'Tx_570 ~v0 = du_HasTxId'45'Tx_570
du_HasTxId'45'Tx_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3956
du_HasTxId'45'Tx_570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4428
-- _.HasTxOuts-Tx
d_HasTxOuts'45'Tx_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4236
d_HasTxOuts'45'Tx_578 ~v0 = du_HasTxOuts'45'Tx_578
du_HasTxOuts'45'Tx_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4236
du_HasTxOuts'45'Tx_578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450
-- _.HasUTxO
d_HasUTxO_588 a0 a1 a2 = ()
-- _.HasValidInterval-Tx
d_HasValidInterval'45'Tx_596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_3996
d_HasValidInterval'45'Tx_596 ~v0 = du_HasValidInterval'45'Tx_596
du_HasValidInterval'45'Tx_596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_3996
du_HasValidInterval'45'Tx_596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4390
-- _.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_614 ~v0 = du_HasWithdrawals'45'Tx_614
du_HasWithdrawals'45'Tx_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4378
-- _.InBalanceInterval
d_InBalanceInterval_628 a0 a1 a2 = ()
-- _.MemoryEstimate
d_MemoryEstimate_680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_MemoryEstimate_680 = erased
-- _.NetworkId
d_NetworkId_692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny
d_NetworkId_692 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
         (coe v0))
-- _.PlutusScript
d_PlutusScript_714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_714 = erased
-- _.PParams
d_PParams_718 a0 = ()
-- _.PParamsOf
d_PParamsOf_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
      (coe v0)
-- _.Script
d_Script_800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_800 = erased
-- _.ScriptHash
d_ScriptHash_808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ScriptHash_808 = erased
-- _.Slot
d_Slot_864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Slot_864 = erased
-- _.SubLevelTx
d_SubLevelTx_876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_876 = erased
-- _.TopLevelTx
d_TopLevelTx_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_896 = erased
-- _.Tx
d_Tx_902 a0 a1 = ()
-- _.TxOut
d_TxOut_920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_920 = erased
-- _.UTxO
d_UTxO_930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_930 = erased
-- _.UTxOOf
d_UTxOOf_932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3630
      (coe v0)
-- _.Value
d_Value_960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Value_960 = erased
-- _.allReferenceScripts
d_allReferenceScripts_994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4522
      (coe v0)
-- _.coin
d_coin_1008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny -> Integer
d_coin_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
         (coe v0))
-- _.inject
d_inject_1066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  Integer -> AgdaAny
d_inject_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
         (coe v0))
-- _.netId
d_netId_1120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1120 ~v0 = du_netId_1120
du_netId_1120 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1120
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- _.txOutToValue
d_txOutToValue_1190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txOutToValue_1190 ~v0 = du_txOutToValue_1190
du_txOutToValue_1190 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_txOutToValue_1190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4468
-- _.GovProposal.action
d_action_1370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_1370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_990
      (coe v0)
-- _.GovProposal.anchor
d_anchor_1372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_1372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- _.GovProposal.deposit
d_deposit_1374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- _.GovProposal.policy
d_policy_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe AgdaAny
d_policy_1376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_1378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_1380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_1474 a0 = ()
-- _.HasPParams.PParamsOf
d_PParamsOf_1772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3630
      (coe v0)
-- _.PParams.Emax
d_Emax_1964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- _.PParams.a
d_a_1966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- _.PParams.a0
d_a0_1968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- _.PParams.b
d_b_1970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_1970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_1972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_1974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_1978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_1982 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_1984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_1988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- _.PParams.nopt
d_nopt_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- _.PParams.prices
d_prices_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- _.PParams.pv
d_pv_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- _.Tx.isValid
d_isValid_2496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
d_isValid_2496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3666
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  Maybe AgdaAny
d_txAuxData_2498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3668
      (coe v0)
-- _.Tx.txBody
d_txBody_2500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3644
d_txBody_2500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
      (coe v0)
-- _.Tx.txSize
d_txSize_2502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  Integer
d_txSize_2502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3664
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3646
d_txWitnesses_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3662
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.CertState
d_CertState_2616 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo._.CertStateOf
d_CertStateOf_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404
d_CertStateOf_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1648
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.HasCertState
d_HasCertState_2678 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Specification.Utxo._.Rewards
d_Rewards_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  ()
d_Rewards_2792 = erased
-- Ledger.Dijkstra.Specification.Utxo._.CertState.dState
d_dState_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1348
d_dState_2896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1412
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.CertState.gState
d_gState_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1388
d_gState_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1416
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.CertState.pState
d_pState_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1368
d_pState_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1414
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.HasCertState.CertStateOf
d_CertStateOf_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404
d_CertStateOf_2950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1648
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo._.evalP2Scripts
d_evalP2Scripts_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_3030 v0 ~v1 = du_evalP2Scripts_3030 v0
du_evalP2Scripts_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_3030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3408
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.totExUnits
d_totExUnits_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
d_totExUnits_3046 v0 ~v1 ~v2 v3 = du_totExUnits_3046 v0 v3
du_totExUnits_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
du_totExUnits_3046 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_456
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3780
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3662
            (coe v1)))
-- Ledger.Dijkstra.Specification.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  Integer
d_utxoEntrySizeWithoutVal_3054 ~v0
  = du_utxoEntrySizeWithoutVal_3054
du_utxoEntrySizeWithoutVal_3054 :: Integer
du_utxoEntrySizeWithoutVal_3054 = coe (8 :: Integer)
-- Ledger.Dijkstra.Specification.Utxo.utxoEntrySize
d_utxoEntrySize_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_3056 v0 ~v1 v2 = du_utxoEntrySize_3056 v0 v2
du_utxoEntrySize_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_3056 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    addInt (coe (8 :: Integer))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                          (coe v0))
                       v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv
d_UTxOEnv_3060 a0 a1 = ()
data T_UTxOEnv_3060
  = C_constructor_3090 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.slot
d_slot_3076 :: T_UTxOEnv_3060 -> AgdaAny
d_slot_3076 v0
  = case coe v0 of
      C_constructor_3090 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.pparams
d_pparams_3078 ::
  T_UTxOEnv_3060 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3078 v0
  = case coe v0 of
      C_constructor_3090 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.treasury
d_treasury_3080 :: T_UTxOEnv_3060 -> Integer
d_treasury_3080 v0
  = case coe v0 of
      C_constructor_3090 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.utxo₀
d_utxo'8320'_3082 ::
  T_UTxOEnv_3060 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3082 v0
  = case coe v0 of
      C_constructor_3090 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.certState
d_certState_3084 ::
  T_UTxOEnv_3060 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404
d_certState_3084 v0
  = case coe v0 of
      C_constructor_3090 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.allScripts
d_allScripts_3086 ::
  T_UTxOEnv_3060 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3086 v0
  = case coe v0 of
      C_constructor_3090 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOEnv.accountBalances
d_accountBalances_3088 ::
  T_UTxOEnv_3060 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_accountBalances_3088 v0
  = case coe v0 of
      C_constructor_3090 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv
d_SubUTxOEnv_3092 a0 a1 = ()
data T_SubUTxOEnv_3092
  = C_constructor_3122 AgdaAny
                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
                       Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Bool
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.slot
d_slot_3108 :: T_SubUTxOEnv_3092 -> AgdaAny
d_slot_3108 v0
  = case coe v0 of
      C_constructor_3122 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.pparams
d_pparams_3110 ::
  T_SubUTxOEnv_3092 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3110 v0
  = case coe v0 of
      C_constructor_3122 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.treasury
d_treasury_3112 :: T_SubUTxOEnv_3092 -> Integer
d_treasury_3112 v0
  = case coe v0 of
      C_constructor_3122 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.utxo₀
d_utxo'8320'_3114 ::
  T_SubUTxOEnv_3092 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_3114 v0
  = case coe v0 of
      C_constructor_3122 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_3116 :: T_SubUTxOEnv_3092 -> Bool
d_isTopLevelValid_3116 v0
  = case coe v0 of
      C_constructor_3122 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.allScripts
d_allScripts_3118 ::
  T_SubUTxOEnv_3092 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_3118 v0
  = case coe v0 of
      C_constructor_3122 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.SubUTxOEnv.accountBalances
d_accountBalances_3120 ::
  T_SubUTxOEnv_3092 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_accountBalances_3120 v0
  = case coe v0 of
      C_constructor_3122 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState
d_UTxOState_3124 a0 a1 = ()
data T_UTxOState_3124
  = C_'10214'_'44'_'44'_'10215''7512'_3138 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           Integer Integer
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.utxo
d_utxo_3132 ::
  T_UTxOState_3124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3132 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3138 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.fees
d_fees_3134 :: T_UTxOState_3124 -> Integer
d_fees_3134 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3138 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.UTxOState.donations
d_donations_3136 :: T_UTxOState_3124 -> Integer
d_donations_3136 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7512'_3138 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo.HasUTxOState
d_HasUTxOState_3144 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_3144
  = C_constructor_3154 (AgdaAny -> T_UTxOState_3124)
-- Ledger.Dijkstra.Specification.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_3152 ::
  T_HasUTxOState_3144 -> AgdaAny -> T_UTxOState_3124
d_UTxOStateOf_3152 v0
  = case coe v0 of
      C_constructor_3154 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.UTxOStateOf
d_UTxOStateOf_3158 ::
  T_HasUTxOState_3144 -> AgdaAny -> T_UTxOState_3124
d_UTxOStateOf_3158 v0 = coe d_UTxOStateOf_3152 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag
d_HasIsTopLevelValidFlag_3164 a0 a1 a2 a3 = ()
newtype T_HasIsTopLevelValidFlag_3164
  = C_constructor_3174 (AgdaAny -> Bool)
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag.IsTopLevelValidFlagOf
d_IsTopLevelValidFlagOf_3172 ::
  T_HasIsTopLevelValidFlag_3164 -> AgdaAny -> Bool
d_IsTopLevelValidFlagOf_3172 v0
  = case coe v0 of
      C_constructor_3174 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.IsTopLevelValidFlagOf
d_IsTopLevelValidFlagOf_3178 ::
  T_HasIsTopLevelValidFlag_3164 -> AgdaAny -> Bool
d_IsTopLevelValidFlagOf_3178 v0
  = coe d_IsTopLevelValidFlagOf_3172 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool
d_HasScriptPool_3184 a0 a1 a2 a3 = ()
newtype T_HasScriptPool_3184
  = C_constructor_3194 (AgdaAny ->
                        [MAlonzo.Code.Data.Sum.Base.T__'8846'__30])
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool.ScriptPoolOf
d_ScriptPoolOf_3192 ::
  T_HasScriptPool_3184 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptPoolOf_3192 v0
  = case coe v0 of
      C_constructor_3194 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.ScriptPoolOf
d_ScriptPoolOf_3198 ::
  T_HasScriptPool_3184 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptPoolOf_3198 v0 = coe d_ScriptPoolOf_3192 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasDataPool
d_HasDataPool_3204 a0 a1 a2 a3 = ()
newtype T_HasDataPool_3204
  = C_constructor_3214 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Utxo.HasDataPool.DataPoolOf
d_DataPoolOf_3212 ::
  T_HasDataPool_3204 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DataPoolOf_3212 v0
  = case coe v0 of
      C_constructor_3214 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.DataPoolOf
d_DataPoolOf_3218 ::
  T_HasDataPool_3204 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DataPoolOf_3218 v0 = coe d_DataPoolOf_3212 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasAccountBalances
d_HasAccountBalances_3224 a0 a1 a2 a3 = ()
newtype T_HasAccountBalances_3224
  = C_constructor_3234 (AgdaAny ->
                        MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Dijkstra.Specification.Utxo.HasAccountBalances.AccountBalancesOf
d_AccountBalancesOf_3232 ::
  T_HasAccountBalances_3224 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_AccountBalancesOf_3232 v0
  = case coe v0 of
      C_constructor_3234 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.AccountBalancesOf
d_AccountBalancesOf_3238 ::
  T_HasAccountBalances_3224 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_AccountBalancesOf_3238 v0 = coe d_AccountBalancesOf_3232 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot
d_HasSlot_3244 a0 a1 a2 a3 = ()
newtype T_HasSlot_3244 = C_constructor_3254 (AgdaAny -> AgdaAny)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot.SlotOf
d_SlotOf_3252 :: T_HasSlot_3244 -> AgdaAny -> AgdaAny
d_SlotOf_3252 v0
  = case coe v0 of
      C_constructor_3254 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Utxo._.SlotOf
d_SlotOf_3258 :: T_HasSlot_3244 -> AgdaAny -> AgdaAny
d_SlotOf_3258 v0 = coe d_SlotOf_3252 (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.HasSlot-UTxOEnv
d_HasSlot'45'UTxOEnv_3260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_HasSlot_3244
d_HasSlot'45'UTxOEnv_3260 ~v0 ~v1 = du_HasSlot'45'UTxOEnv_3260
du_HasSlot'45'UTxOEnv_3260 :: T_HasSlot_3244
du_HasSlot'45'UTxOEnv_3260
  = coe C_constructor_3254 (coe (\ v0 -> d_slot_3076 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_3262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'UTxOEnv_3262 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_3262
du_HasPParams'45'UTxOEnv_3262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'UTxOEnv_3262
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_582
      (coe (\ v0 -> d_pparams_3078 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasTreasury-UTxOEnv
d_HasTreasury'45'UTxOEnv_3264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'UTxOEnv_3264 ~v0 ~v1
  = du_HasTreasury'45'UTxOEnv_3264
du_HasTreasury'45'UTxOEnv_3264 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'UTxOEnv_3264
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_3080 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOEnv
d_HasUTxO'45'UTxOEnv_3266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622
d_HasUTxO'45'UTxOEnv_3266 ~v0 ~v1 = du_HasUTxO'45'UTxOEnv_3266
du_HasUTxO'45'UTxOEnv_3266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622
du_HasUTxO'45'UTxOEnv_3266
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3632
      (coe (\ v0 -> d_utxo'8320'_3082 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasCertState-UTxOEnv
d_HasCertState'45'UTxOEnv_3268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640
d_HasCertState'45'UTxOEnv_3268 ~v0 ~v1
  = du_HasCertState'45'UTxOEnv_3268
du_HasCertState'45'UTxOEnv_3268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1640
du_HasCertState'45'UTxOEnv_3268
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1650
      (coe (\ v0 -> d_certState_3084 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool-UTxOEnv
d_HasScriptPool'45'UTxOEnv_3270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_HasScriptPool_3184
d_HasScriptPool'45'UTxOEnv_3270 ~v0 ~v1
  = du_HasScriptPool'45'UTxOEnv_3270
du_HasScriptPool'45'UTxOEnv_3270 :: T_HasScriptPool_3184
du_HasScriptPool'45'UTxOEnv_3270
  = coe C_constructor_3194 (coe (\ v0 -> d_allScripts_3086 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasAccountBalances-UTxOEnv
d_HasAccountBalances'45'UTxOEnv_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_HasAccountBalances_3224
d_HasAccountBalances'45'UTxOEnv_3272 ~v0 ~v1
  = du_HasAccountBalances'45'UTxOEnv_3272
du_HasAccountBalances'45'UTxOEnv_3272 :: T_HasAccountBalances_3224
du_HasAccountBalances'45'UTxOEnv_3272
  = coe
      C_constructor_3234 (coe (\ v0 -> d_accountBalances_3088 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasSlot-SubUTxOEnv
d_HasSlot'45'SubUTxOEnv_3274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_HasSlot_3244
d_HasSlot'45'SubUTxOEnv_3274 ~v0 ~v1
  = du_HasSlot'45'SubUTxOEnv_3274
du_HasSlot'45'SubUTxOEnv_3274 :: T_HasSlot_3244
du_HasSlot'45'SubUTxOEnv_3274
  = coe C_constructor_3254 (coe (\ v0 -> d_slot_3108 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasPParams-SubUTxOEnv
d_HasPParams'45'SubUTxOEnv_3276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'SubUTxOEnv_3276 ~v0 ~v1
  = du_HasPParams'45'SubUTxOEnv_3276
du_HasPParams'45'SubUTxOEnv_3276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'SubUTxOEnv_3276
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_582
      (coe (\ v0 -> d_pparams_3110 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasTreasury-SubUTxOEnv
d_HasTreasury'45'SubUTxOEnv_3278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'SubUTxOEnv_3278 ~v0 ~v1
  = du_HasTreasury'45'SubUTxOEnv_3278
du_HasTreasury'45'SubUTxOEnv_3278 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'SubUTxOEnv_3278
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_90
      (coe (\ v0 -> d_treasury_3112 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-SubUTxOEnv
d_HasUTxO'45'SubUTxOEnv_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622
d_HasUTxO'45'SubUTxOEnv_3280 ~v0 ~v1
  = du_HasUTxO'45'SubUTxOEnv_3280
du_HasUTxO'45'SubUTxOEnv_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622
du_HasUTxO'45'SubUTxOEnv_3280
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3632
      (coe (\ v0 -> d_utxo'8320'_3114 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasIsTopLevelValidFlag-SubUTxOEnv
d_HasIsTopLevelValidFlag'45'SubUTxOEnv_3282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_HasIsTopLevelValidFlag_3164
d_HasIsTopLevelValidFlag'45'SubUTxOEnv_3282 ~v0 ~v1
  = du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3282
du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3282 ::
  T_HasIsTopLevelValidFlag_3164
du_HasIsTopLevelValidFlag'45'SubUTxOEnv_3282
  = coe
      C_constructor_3174 (coe (\ v0 -> d_isTopLevelValid_3116 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasScriptPool-SubUTxOEnv
d_HasScriptPool'45'SubUTxOEnv_3284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_HasScriptPool_3184
d_HasScriptPool'45'SubUTxOEnv_3284 ~v0 ~v1
  = du_HasScriptPool'45'SubUTxOEnv_3284
du_HasScriptPool'45'SubUTxOEnv_3284 :: T_HasScriptPool_3184
du_HasScriptPool'45'SubUTxOEnv_3284
  = coe C_constructor_3194 (coe (\ v0 -> d_allScripts_3118 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasAccountBalances-SubUTxOEnv
d_HasAccountBalances'45'SubUTxOEnv_3286 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_HasAccountBalances_3224
d_HasAccountBalances'45'SubUTxOEnv_3286 ~v0 ~v1
  = du_HasAccountBalances'45'SubUTxOEnv_3286
du_HasAccountBalances'45'SubUTxOEnv_3286 ::
  T_HasAccountBalances_3224
du_HasAccountBalances'45'SubUTxOEnv_3286
  = coe
      C_constructor_3234 (coe (\ v0 -> d_accountBalances_3120 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_3288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622
d_HasUTxO'45'UTxOState_3288 ~v0 ~v1 = du_HasUTxO'45'UTxOState_3288
du_HasUTxO'45'UTxOState_3288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3622
du_HasUTxO'45'UTxOState_3288
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3632
      (coe (\ v0 -> d_utxo_3132 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasFee-UTxOState
d_HasFee'45'UTxOState_3290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_3290 ~v0 ~v1 = du_HasFee'45'UTxOState_3290
du_HasFee'45'UTxOState_3290 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_3290
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_fees_3134 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasDonations-UTxOState
d_HasDonations'45'UTxOState_3292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_3292 ~v0 ~v1
  = du_HasDonations'45'UTxOState_3292
du_HasDonations'45'UTxOState_3292 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_3292
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_donations_3136 (coe v0)))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_3294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_3294 ~v0 ~v1 = du_HasCast'45'UTxOEnv_3294
du_HasCast'45'UTxOEnv_3294 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_3294
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
                                 (3060 :: Integer) (1252473578754917138 :: Integer)
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
                                 (864 :: Integer) (1252473578754917138 :: Integer) "_.Slot"
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
                                    (3060 :: Integer) (1252473578754917138 :: Integer)
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
                                    (718 :: Integer) (1252473578754917138 :: Integer) "_.PParams"
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
                                       (3060 :: Integer) (1252473578754917138 :: Integer)
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
                                          (3060 :: Integer) (1252473578754917138 :: Integer)
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
                                          (930 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                             (3060 :: Integer) (1252473578754917138 :: Integer)
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
                                             (2616 :: Integer) (1252473578754917138 :: Integer)
                                             "Ledger.Dijkstra.Specification.Utxo._.CertState"
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
                                                (3060 :: Integer) (1252473578754917138 :: Integer)
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
                                                         (800 :: Integer)
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
                                                   (3060 :: Integer)
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
                                                   (2792 :: Integer)
                                                   (1252473578754917138 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Utxo._.Rewards"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_3090))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-SubUTxOEnv
d_HasCast'45'SubUTxOEnv_3296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'SubUTxOEnv_3296 ~v0 ~v1
  = du_HasCast'45'SubUTxOEnv_3296
du_HasCast'45'SubUTxOEnv_3296 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'SubUTxOEnv_3296
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
                                 (3092 :: Integer) (1252473578754917138 :: Integer)
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
                                 (864 :: Integer) (1252473578754917138 :: Integer) "_.Slot"
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
                                    (3092 :: Integer) (1252473578754917138 :: Integer)
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
                                    (718 :: Integer) (1252473578754917138 :: Integer) "_.PParams"
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
                                       (3092 :: Integer) (1252473578754917138 :: Integer)
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
                                          (3092 :: Integer) (1252473578754917138 :: Integer)
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
                                          (930 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                             (3092 :: Integer) (1252473578754917138 :: Integer)
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
                                                (3092 :: Integer) (1252473578754917138 :: Integer)
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
                                                         (800 :: Integer)
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
                                                   (3092 :: Integer)
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
                                                   (2792 :: Integer)
                                                   (1252473578754917138 :: Integer)
                                                   "Ledger.Dijkstra.Specification.Utxo._.Rewards"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_3122))
-- Ledger.Dijkstra.Specification.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_3298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_3298 ~v0 ~v1 = du_HasCast'45'UTxOState_3298
du_HasCast'45'UTxOState_3298 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_3298
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
                                 (3124 :: Integer) (1252473578754917138 :: Integer)
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
                                 (930 :: Integer) (1252473578754917138 :: Integer) "_.UTxO"
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
                                    (3124 :: Integer) (1252473578754917138 :: Integer)
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
                                       (3124 :: Integer) (1252473578754917138 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'10215''7512'_3138))
-- Ledger.Dijkstra.Specification.Utxo.outs
d_outs_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_3314 ~v0 ~v1 ~v2 v3 = du_outs_3314 v3
du_outs_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_3314 v0
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
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_3964
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4428)
                 v0)
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
         v0)
-- Ledger.Dijkstra.Specification.Utxo.balance
d_balance_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_3320 v0 ~v1 v2 = du_balance_3320 v0 v2
du_balance_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_3320 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum''_1452
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v0)))
      (coe (\ v2 -> v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4472
         (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.cbalance
d_cbalance_3326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_3326 v0 ~v1 v2 = du_cbalance_3326 v0 v2
du_cbalance_3326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_3326 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
         (coe v0))
      (coe du_balance_3320 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.refScriptsSize
d_refScriptsSize_3330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_refScriptsSize_3330 v0 v1 ~v2 v3 v4
  = du_refScriptsSize_3330 v0 v1 v3 v4
du_refScriptsSize_3330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_refScriptsSize_3330 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3108
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4516
         (coe v0) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Utxo.minfee
d_minfee_3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_minfee_3338 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txScriptFee_3100
               v1
               (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
                  (coe v2))
               (coe du_totExUnits_3046 (coe v0) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402
               (coe v2)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Fees.du_scriptsCost_26
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
               (coe v0))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v0))
            (coe v2)
            (coe du_refScriptsSize_3330 (coe v0) (coe v1) (coe v3) (coe v4))))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3664
            (coe v3)))
-- Ledger.Dijkstra.Specification.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_3346 v0 ~v1 = du_HasCoin'45'UTxO_3346 v0
du_HasCoin'45'UTxO_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_3346 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe du_cbalance_3326 (coe v0))
-- Ledger.Dijkstra.Specification.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3348 v0 ~v1
  = du_HasCoin'45'UTxOState_3348 v0
du_HasCoin'45'UTxOState_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3348 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt (coe du_cbalance_3326 (coe v0) (coe d_utxo_3132 (coe v1)))
                 (coe d_donations_3136 (coe v1)))
              (coe d_fees_3134 (coe v1))))
-- Ledger.Dijkstra.Specification.Utxo.inInterval
d_inInterval_3354 a0 a1 a2 a3 = ()
data T_inInterval_3354
  = C_both_3362 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_3366 AgdaAny | C_upper_3370 AgdaAny | C_none_3372
-- Ledger.Dijkstra.Specification.Utxo.Dec-inInterval
d_Dec'45'inInterval_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_3374 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_3374 v0 v2 v3
du_Dec'45'inInterval_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_3374 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
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
                                                                                    C_both_3362
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
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
                                                         (coe C_lower_3366 v9))
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
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
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
                                                         (coe C_upper_3370 v9))
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
                                 (coe C_none_3372))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Utxo.coinPolicies
d_coinPolicies_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  [AgdaAny]
d_coinPolicies_3476 v0 ~v1 = du_coinPolicies_3476 v0
du_coinPolicies_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [AgdaAny]
du_coinPolicies_3476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v0))
         (1 :: Integer))
-- Ledger.Dijkstra.Specification.Utxo.isAdaOnly
d_isAdaOnly_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  AgdaAny -> ()
d_isAdaOnly_3478 = erased
-- Ledger.Dijkstra.Specification.Utxo.collateralCheck
d_collateralCheck_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_3482 = erased
-- Ledger.Dijkstra.Specification.Utxo._.govProposalsDeposits
d_govProposalsDeposits_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976] ->
  Integer
d_govProposalsDeposits_3500 ~v0 ~v1 v2
  = du_govProposalsDeposits_3500 v2
du_govProposalsDeposits_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976] ->
  Integer
du_govProposalsDeposits_3500 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v1 v2 ->
            addInt
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
                 (coe v0))
              (coe v1)))
      (coe (0 :: Integer))
-- Ledger.Dijkstra.Specification.Utxo._.consumedTx
d_consumedTx_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedTx_3514 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_consumedTx_3514 v0 v2 v5 v6
du_consumedTx_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedTx_3514 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                     (coe v0))))
            (coe
               du_balance_3320 (coe v0)
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                           (coe v0))))
                  (coe v3)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4024
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4394)
                     v2)))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4064
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4402)
               v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
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
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3732
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                     (coe v2))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v0))
         (coe
            du_govProposalsDeposits_3500 v1
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3742
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                  (coe v2)))))
-- Ledger.Dijkstra.Specification.Utxo._.consumed
d_consumed_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumed_3520 v0 ~v1 v2 v3 v4 v5
  = du_consumed_3520 v0 v2 v3 v4 v5
du_consumed_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumed_3520 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))))
      (coe du_consumedTx_3514 (coe v0) (coe v1) (coe v3) (coe v4))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_1904
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
               (coe v0))
            (coe v1) (coe v2)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4608
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.consumedBatch
d_consumedBatch_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_consumedBatch_3526 v0 ~v1 v2 v3 v4 v5
  = du_consumedBatch_3526 v0 v2 v3 v4 v5
du_consumedBatch_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_consumedBatch_3526 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))))
      (coe du_consumed_3520 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
         (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0)))
         (\ v5 ->
            coe du_consumedTx_3514 (coe v0) (coe v1) (coe v5) (coe v4))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3752
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.producedTx
d_producedTx_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
d_producedTx_3534 v0 ~v1 ~v2 ~v3 ~v4 v5 = du_producedTx_3534 v0 v5
du_producedTx_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
du_producedTx_3534 v0 v1
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                  (coe v0))))
         (coe du_balance_3320 (coe v0) (coe du_outs_3314 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3738
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                  (coe v1)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                     (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_constructor_32
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
            (coe (\ v2 -> v2))
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4304
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4382)
               v1)))
-- Ledger.Dijkstra.Specification.Utxo._.produced
d_produced_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
d_produced_3538 v0 ~v1 v2 v3 v4 = du_produced_3538 v0 v2 v3 v4
du_produced_3538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
du_produced_3538 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                  (coe v0))))
         (coe du_producedTx_3534 (coe v0) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))
            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3730
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                  (coe v3)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_refundCertDeposits_1908
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
               (coe v0))
            (coe v1) (coe v2)
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4608
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.producedBatch
d_producedBatch_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
d_producedBatch_3542 v0 ~v1 v2 v3 v4
  = du_producedBatch_3542 v0 v2 v3 v4
du_producedBatch_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1404 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  AgdaAny
du_producedBatch_3542 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0))))
      (coe du_produced_3538 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
         (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
               (coe v0)))
         (coe du_producedTx_3534 (coe v0))
         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3752
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo.NoPhantomWithdrawals
d_NoPhantomWithdrawals_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  ()
d_NoPhantomWithdrawals_3548 = erased
-- Ledger.Dijkstra.Specification.Utxo.allP2ScriptsWithContext
d_allP2ScriptsWithContext_3560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_UTxOEnv_3060 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allP2ScriptsWithContext_3560 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         du_p2ScriptsWithContext_3570 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Data.List.Base.du_concatMap_246
         (\ v4 ->
            coe
              du_p2ScriptsWithContext_3570 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3752
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
               (coe v3))))
-- Ledger.Dijkstra.Specification.Utxo._.p2ScriptsWithContext
d_p2ScriptsWithContext_3570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_UTxOEnv_3060 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_p2ScriptsWithContext_3570 v0 v1 v2 v3 ~v4 ~v5
  = du_p2ScriptsWithContext_3570 v0 v1 v2 v3
du_p2ScriptsWithContext_3570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_UTxOEnv_3060 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_p2ScriptsWithContext_3570 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3342
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
      (coe d_pparams_3078 (coe v2)) (coe v3)
      (coe d_utxo'8320'_3082 (coe v2)) (coe d_allScripts_3086 (coe v2))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3574 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3574 = C_UTXOS_3576
-- Ledger.Dijkstra.Specification.Utxo.UTXOS-premises
d_UTXOS'45'premises_3578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  T_UTxOEnv_3060 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOS'45'premises_3578 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3408
            v0
            (d_allP2ScriptsWithContext_3560
               (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3666
            (coe v3)))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3580 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3580
  = C_SUBUTXO_3616 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.SUBUTXO-premises
d_SUBUTXO'45'premises_3618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  T_SubUTxOEnv_3092 ->
  T_UTxOState_3124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SUBUTXO'45'premises_3618 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4024
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4394)
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
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                             (coe v0))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe d_utxo'8320'_3114 (coe v3)))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4024
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4394)
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
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                (coe v0))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                (coe v0)))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe d_utxo'8320'_3114 (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4044
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4398)
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
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                   (coe v0))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                   (coe v0)))
                             (coe v5)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe d_utxo_3132 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4024
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4394)
                        v2))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        du_Dec'45'inInterval_3374 (coe v0) (coe d_slot_3108 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3734
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4064
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4402)
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
                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                            (coe v0))
                                         (mulInt
                                            (coe
                                               addInt (coe (160 :: Integer))
                                               (coe
                                                  du_utxoEntrySize_3056 (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5))))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
                                               (coe d_pparams_3110 (coe v3)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4468
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                 (coe
                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
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
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3102
                                            v1
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4468
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5))))
                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
                                            (coe d_pparams_3110 (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                    (coe
                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
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
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v5)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                     (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_range_588
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
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
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                     (coe v5))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                        (coe v0)))))
                                          (coe
                                             MAlonzo.Code.Class.IsSet.du_dom_586
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3732
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
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
                                                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                        (coe v5))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                           (coe v0)))))
                                             (coe
                                                MAlonzo.Code.Class.IsSet.du_dom_586
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4304
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4382)
                                                   v2)))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Prelude.du_'126''63'_48
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3744
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                      (coe v2)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Prelude.du_'126''63'_48
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3746
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                         (coe v2)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                      (coe d_treasury_3112 (coe v3)))
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                       (coe v0))))
                                                              (coe v5)
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                 (coe
                                                                    d_accountBalances_3120
                                                                    (coe v3)))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_map_426
                                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (\ v5 ->
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                              (coe v5))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4304
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4382)
                                                               v2))))
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
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                             (coe v0))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                          (coe v0))))
                                                                 (coe v5)
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                    (coe
                                                                       d_accountBalances_3120
                                                                       (coe v3)))))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3760
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                  (coe v2)))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            (\ v5 ->
                                                               coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_876
                                                                 (coe
                                                                    MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                    (coe (\ v6 -> v6))
                                                                    (coe (0 :: Integer))
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          d_accountBalances_3120
                                                                          (coe v3))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v5))
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                   (coe v0))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v5))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                (coe
                                                                                   d_accountBalances_3120
                                                                                   (coe v3)))))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v5))))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3760
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                  (coe v2)))))))))))))))))))))
-- Ledger.Dijkstra.Specification.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__3620 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__3620
  = C_UTXO_3660 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Specification.Utxo.UTXO-premises
d_UTXO'45'premises_3662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3640 ->
  T_UTxOEnv_3060 ->
  T_UTxOState_3124 -> Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3662 v0 v1 v2 v3 v4 v5
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
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                        (coe v0))
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4024
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4394)
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
                  (\ v6 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                             (coe v0))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                             (coe v0)))
                       (coe v6)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                          (coe d_utxo'8320'_3082 (coe v3)))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4024
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4394)
                  v2))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                (coe v0))
                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                (coe v0)))
                          (coe v6)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe d_utxo'8320'_3082 (coe v3)))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4044
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4398)
                     v2))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        (\ v6 ->
                           coe
                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe
                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                   (coe v0))
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                   (coe v0)))
                             (coe v6)
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe d_utxo_3132 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4024
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4394)
                        v2))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        du_Dec'45'inInterval_3374 (coe v0) (coe d_slot_3076 (coe v3))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3734
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                           (d_minfee_3338
                              (coe v0) (coe v1) (coe d_pparams_3078 (coe v3)) (coe v2)
                              (coe d_utxo'8320'_3082 (coe v3)))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3730
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4064
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4402)
                                    v2))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                       (coe v0)))
                                 (coe
                                    du_consumedBatch_3526 (coe v0) (coe d_pparams_3078 (coe v3))
                                    (coe d_certState_3084 (coe v3)) (coe v2)
                                    (coe d_utxo'8320'_3082 (coe v3)))
                                 (coe
                                    du_producedBatch_3542 (coe v0) (coe d_pparams_3078 (coe v3))
                                    (coe d_certState_3084 (coe v3)) (coe v2)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                       (coe v5) (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                             (coe v0)))
                                       (coe
                                          du_consumed_3520 (coe v0) (coe d_pparams_3078 (coe v3))
                                          (coe d_certState_3084 (coe v3)) (coe v2)
                                          (coe d_utxo'8320'_3082 (coe v3)))
                                       (coe
                                          du_produced_3538 (coe v0) (coe d_pparams_3078 (coe v3))
                                          (coe d_certState_3084 (coe v3)) (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3664
                                          (coe v2))
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
                                          (coe d_pparams_3078 (coe v3))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                             MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3108
                                                (coe v1))
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4522
                                                (coe v0) (coe v2) (coe d_utxo'8320'_3082 (coe v3))))
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
                                             (coe d_pparams_3078 (coe v3))))
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
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                              (coe v0))))))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                        (coe v0)))))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3780
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3662
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
                                                      (\ v6 ->
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
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                          (coe v0)))
                                                                    (coe
                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                       () erased () erased
                                                                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                      (coe v0))))))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                (coe v0)))))))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3780
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3662
                                                                       (coe v6))))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3752
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v6 ->
                                                         coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v6)))))
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                  (coe v0))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                  (coe v0))))
                                                         (coe d_utxo'8320'_3082 (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3722
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
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
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                       (coe v0)))
                                                                 (coe v6)
                                                                 (coe
                                                                    du_coinPolicies_3476 (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                               (coe v0))
                                                            (coe
                                                               du_balance_3320 (coe v0)
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                           (coe v0))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                           (coe v0))))
                                                                  (coe d_utxo'8320'_3082 (coe v3))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3722
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                        (coe v2)))))))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                       (coe v0)))
                                                                 (coe v6)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                       (coe v0))
                                                                    (coe
                                                                       du_balance_3320 (coe v0)
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
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                   (coe v0))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                   (coe v0))))
                                                                          (coe
                                                                             d_utxo'8320'_3082
                                                                             (coe v3))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3722
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                                (coe v2))))))))
                                                         (coe du_coinPolicies_3476 (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                         (mulInt
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3730
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                  (coe v2)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
                                                               (coe d_pparams_3078 (coe v3))))
                                                         (mulInt
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                  (coe v0))
                                                               (coe
                                                                  du_balance_3320 (coe v0)
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                              (coe v0))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                              (coe v0))))
                                                                     (coe
                                                                        d_utxo'8320'_3082 (coe v3))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3722
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
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
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                     (coe v0))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3722
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
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
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                              (coe v0))
                                                           (mulInt
                                                              (coe
                                                                 addInt (coe (160 :: Integer))
                                                                 (coe
                                                                    du_utxoEntrySize_3056 (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v6))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
                                                                 (coe d_pparams_3078 (coe v3)))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4468
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v6)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                   (coe
                                                      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
                                                      v2)))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v6 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3102
                                                              v1
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4468
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v6))))
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
                                                              (coe d_pparams_3078 (coe v3)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                                                      (coe
                                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
                                                         v2)))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v6 ->
                                                            coe
                                                              MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                              (coe
                                                                 (\ v7 ->
                                                                    MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                      (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
                                                                         (coe v7))
                                                                      (64 :: Integer)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v6))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_range_588
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
                                                            v2)))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v6)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4244
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4450)
                                                               v2)))
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                            (coe
                                                               (\ v6 ->
                                                                  coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                          (coe v0)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                       (coe v6))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3732
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                     (coe v2)))))
                                                         (coe
                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                               (coe
                                                                  (\ v6 ->
                                                                     coe
                                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                             (coe v0)))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                          (coe v6))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
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
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4304
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4382)
                                                                     v2)))
                                                            (coe
                                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                               (coe
                                                                  MAlonzo.Code.Prelude.du_'126''63'_48
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3744
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                        (coe v2)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.du_'126''63'_48
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3746
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                           (coe v2)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                        (coe
                                                                           d_treasury_3080
                                                                           (coe v3)))
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                        (coe
                                                                           (\ v6 ->
                                                                              coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                            (coe
                                                                                               v0))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                         (coe v0))))
                                                                                (coe v6)
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                   (coe
                                                                                      d_accountBalances_3088
                                                                                      (coe v3)))))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_map_426
                                                                           (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (\ v6 ->
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                                                                                (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Class.IsSet.du_dom_586
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4304
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4382)
                                                                                 v2))))
                                                                     (coe
                                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                           (coe
                                                                              (\ v6 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                            (coe
                                                                                               v0))))
                                                                                   (coe v6)
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                      (coe
                                                                                         d_accountBalances_3088
                                                                                         (coe
                                                                                            v3)))))
                                                                           (coe
                                                                              MAlonzo.Code.Class.IsSet.du_dom_586
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3760
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                                    (coe v2)))))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                           (coe
                                                                              (\ v6 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_876
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                                      (coe
                                                                                         (\ v7 ->
                                                                                            v7))
                                                                                      (coe
                                                                                         (0 ::
                                                                                            Integer))
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            d_accountBalances_3088
                                                                                            (coe
                                                                                               v3))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               v6))
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                        (coe
                                                                                                           v0))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                     (coe
                                                                                                        v0))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v6))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                                  (coe
                                                                                                     d_accountBalances_3088
                                                                                                     (coe
                                                                                                        v3)))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                      (coe v6))))
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3760
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3660
                                                                                    (coe
                                                                                       v2)))))))))))))))))))))))))))
