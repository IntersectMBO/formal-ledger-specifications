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

module MAlonzo.Code.Ledger.Conway.Specification.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Datum
d_Datum_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_78 = erased
-- _.ExUnits
d_ExUnits_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_172 = erased
-- _.Hashable-Script
d_Hashable'45'Script_364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
         (coe v0))
-- _.Language
d_Language_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_394 = erased
-- _.PParams
d_PParams_436 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_480 = erased
-- _.Redeemer
d_Redeemer_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_482 = erased
-- _.ScriptHash
d_ScriptHash_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_502 = erased
-- _.Tx
d_Tx_584 a0 = ()
-- _.TxBody
d_TxBody_588 a0 = ()
-- _.TxOut
d_TxOut_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_600 = erased
-- _.UTxO
d_UTxO_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_608 = erased
-- _.isBootstrapAddr
d_isBootstrapAddr_702 a0 a1 = ()
-- _.isBootstrapAddr?
d_isBootstrapAddr'63'_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_704 ~v0 = du_isBootstrapAddr'63'_704
du_isBootstrapAddr'63'_704 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_704
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_260
-- _.isKeyHashObj
d_isKeyHashObj_710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_710 ~v0 = du_isKeyHashObj_710
du_isKeyHashObj_710 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_710
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_730 ~v0 = du_isScriptObj_730
du_isScriptObj_730 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_730
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- _.isSigned
d_isSigned_734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_734 = erased
-- _.refScripts
d_refScripts_784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3598
      (coe v0)
-- _.toP1Script
d_toP1Script_800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_800 ~v0 = du_toP1Script_800
du_toP1Script_800 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_800
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412
-- _.txscripts
d_txscripts_814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3646
      (coe v0)
-- _.validP1Script
d_validP1Script_824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_824 = erased
-- _.PParams.Emax
d_Emax_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- _.PParams.a
d_a_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- _.PParams.a0
d_a0_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- _.PParams.b
d_b_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_422
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
         (coe v0))
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- _.PParams.nopt
d_nopt_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- _.PParams.prices
d_prices_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_1420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- _.PParams.pv
d_pv_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- _.Tx.body
d_body_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338
d_body_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
      (coe v0)
-- _.Tx.isValid
d_isValid_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Bool
d_isValid_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3536
      (coe v0)
-- _.Tx.txAD
d_txAD_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Maybe AgdaAny
d_txAD_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3538
      (coe v0)
-- _.Tx.txsize
d_txsize_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Integer
d_txsize_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3534
      (coe v0)
-- _.Tx.wits
d_wits_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3496
d_wits_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3380
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Maybe Integer
d_currentTreasury_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3404
      (coe v0)
-- _.TxBody.mint
d_mint_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  AgdaAny
d_mint_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3406
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3378
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [AgdaAny]
d_reqSignerHashes_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3408
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3410
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Maybe AgdaAny
d_txADhash_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3394
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3386
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Integer
d_txDonation_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3396
      (coe v0)
-- _.TxBody.txFee
d_txFee_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Integer
d_txFee_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3388
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1008]
d_txGovProposals_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3400
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3398
      (coe v0)
-- _.TxBody.txId
d_txId_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  AgdaAny
d_txId_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3384
      (coe v0)
-- _.TxBody.txIns
d_txIns_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3376
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  Maybe AgdaAny
d_txNetworkId_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3402
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3382
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3392
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3390
      (coe v0)
-- Ledger.Conway.Specification.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1960 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Utxow._.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'UTxOEnv_1980 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_1980
du_HasPParams'45'UTxOEnv_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
du_HasPParams'45'UTxOEnv_1980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasPParams'45'UTxOEnv_2470
-- Ledger.Conway.Specification.Utxow._.UTxOEnv
d_UTxOEnv_2000 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.UTxOState
d_UTxOState_2004 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.pparams
d_pparams_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2414 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2424
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.slot
d_slot_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2414 ->
  AgdaAny
d_slot_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2422 (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.treasury
d_treasury_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2414 ->
  Integer
d_treasury_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2426
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.deposits
d_deposits_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2444
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.donations
d_donations_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  Integer
d_donations_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2446
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.fees
d_fees_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  Integer
d_fees_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2442 (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.utxo
d_utxo_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440 (coe v0)
-- Ledger.Conway.Specification.Utxow._.credentialToP2Script
d_credentialToP2Script_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_credentialToP2Script_2152 v0 ~v1
  = du_credentialToP2Script_2152 v0
du_credentialToP2Script_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_credentialToP2Script_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2822
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.credsNeeded
d_credsNeeded_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2154 v0 ~v1 = du_credsNeeded_2154 v0
du_credsNeeded_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2750
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.rdptr
d_rdptr_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2348 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2162 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2496
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Utxow._.txOutToDataHash
d_txOutToDataHash_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2166 ~v0 ~v1 = du_txOutToDataHash_2166
du_txOutToDataHash_2166 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2818
-- Ledger.Conway.Specification.Utxow._.txOutToP2Script
d_txOutToP2Script_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2168 v0 ~v1 = du_txOutToP2Script_2168 v0
du_txOutToP2Script_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2834
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.d
d_d_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2592 ~v0 v1 = du_d_2592 v1
du_d_2592 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2592 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.HasInlineDatum
d_HasInlineDatum_2594 a0 a1 a2 = ()
newtype T_HasInlineDatum_2594 = C_InlineDatum_2598 AgdaAny
-- Ledger.Conway.Specification.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2602 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2602 v2
du_Dec'45'HasInlineDatum_2602 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2602 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                             -> case coe v7 of
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe C_InlineDatum_2598 v8)))
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow._._.UsesV3Features
d_UsesV3Features_2664 a0 a1 a2 = ()
data T_UsesV3Features_2664
  = C_HasVotes_2666 | C_HasProps_2668 | C_HasDonation_2670 |
    C_HasTreasure_2672
-- Ledger.Conway.Specification.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2676 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2676 v2
du_Dec'45'UsesV3Features_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2676 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3412 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> let v19
                 = case coe v12 of
                     []
                       -> coe
                            seq (coe v13)
                            (coe
                               MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                     (coe C_HasProps_2668))))
                     (:) v19 v20
                       -> coe
                            MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                            (coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                  (coe C_HasVotes_2666)))
                     _ -> MAlonzo.RTE.mazUnreachableError in
           coe
             (case coe v11 of
                0 -> case coe v12 of
                       []
                         -> case coe v13 of
                              []
                                -> case coe v15 of
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                       -> coe
                                            MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                  (coe C_HasTreasure_2672)))
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                       -> coe
                                            MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> coe v19
                       (:) v20 v21
                         -> coe
                              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                    (coe C_HasVotes_2666)))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> case coe v12 of
                       []
                         -> case coe v13 of
                              []
                                -> coe
                                     MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                           (coe C_HasDonation_2670)))
                              _ -> coe v19
                       (:) v20 v21
                         -> coe
                              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                    (coe C_HasVotes_2666)))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.languages
d_languages_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_languages_2700 v0 ~v1 v2 v3 = du_languages_2700 v0 v2 v3
du_languages_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_languages_2700 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_426
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
            (coe v0)))
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3646
         (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Specification.Utxow.allowedLanguages
d_allowedLanguages_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2706 v0 ~v1 v2 v3
  = du_allowedLanguages_2706 v0 v2 v3
du_allowedLanguages_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2706 v0 v1 v2
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__38
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_260
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe du_os_2756 (coe v0) (coe v1) (coe v2)))
      (coe
         (\ v3 ->
            MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
              (coe
                 MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__38
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
              (coe du_Dec'45'UsesV3Features_2676 (coe du_txb_2716 (coe v1)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Axiom.Set.du_fromList_456
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1516
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                  (coe v0))))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Class.ToBool.du_if_then_else__38
                      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (coe du_Dec'45'HasInlineDatum_2602)
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_526
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
                            (coe du_os_2756 (coe v0) (coe v1) (coe v2))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_456
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                             (coe v0))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Axiom.Set.du_fromList_456
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_216
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                                (coe v0))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
-- Ledger.Conway.Specification.Utxow._.txb
d_txb_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338
d_txb_2716 ~v0 ~v1 v2 ~v3 = du_txb_2716 v2
du_txb_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338
du_txb_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.os
d_os_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2756 v0 ~v1 v2 v3 = du_os_2756 v0 v2 v3
du_os_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2756 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_588
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2494
            (coe du_txb_2716 (coe v1))))
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
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1310
                     (coe v0))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1308
                     (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3376
                  (coe du_txb_2716 (coe v1)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3378
                  (coe du_txb_2716 (coe v1))))))
-- Ledger.Conway.Specification.Utxow.hashScriptIntegrity
d_hashScriptIntegrity_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> Maybe AgdaAny
d_hashScriptIntegrity_2762 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                 (coe
                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1308
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                      (coe v0))))))
                       (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_238
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                (coe v0)))))))
              (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v4))
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8709'_470
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1516
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))) in
    coe
      (let v7
             = coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                             (coe v0)))))
                 v3
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8709'_470
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))) in
       coe
         (let v8
                = coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                      (coe v0)))))))
                    v5
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8709'_470
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))) in
          coe
            (case coe v6 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                 -> let v11
                          = coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2572
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_map_426
                                          (MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_getLanguageView_2474
                                             v1 v2)
                                          v3)))) in
                    coe
                      (case coe v9 of
                         MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                           -> case coe v10 of
                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                  -> case coe v7 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                         -> case coe v13 of
                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                -> case coe v14 of
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                       -> case coe v8 of
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                              -> case coe v16 of
                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                     -> case coe v17 of
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                            -> coe
                                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                                          _ -> coe v11
                                                                   _ -> coe v11
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> coe v11
                                              _ -> coe v11
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> coe v11
                         _ -> coe v11)
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Specification.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2800 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2800
  = C_UTXOW'45'inductive_2904 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxow._.txAD
d_txAD_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> Maybe AgdaAny
d_txAD_2806 ~v0 ~v1 v2 = du_txAD_2806 v2
du_txAD_2806 :: T_GeneralizeTel_41121 -> Maybe AgdaAny
du_txAD_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3538
      (coe d_'46'generalizedField'45'tx_41113 (coe v0))
-- Ledger.Conway.Specification.Utxow._.body
d_body_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338
d_body_2808 ~v0 ~v1 v2 = du_body_2808 v2
du_body_2808 ::
  T_GeneralizeTel_41121 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338
du_body_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
      (coe d_'46'generalizedField'45'tx_41113 (coe v0))
-- Ledger.Conway.Specification.Utxow._.wits
d_wits_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3496
d_wits_2812 ~v0 ~v1 v2 = du_wits_2812 v2
du_wits_2812 ::
  T_GeneralizeTel_41121 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3496
du_wits_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
      (coe d_'46'generalizedField'45'tx_41113 (coe v0))
-- Ledger.Conway.Specification.Utxow._.refInputs
d_refInputs_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2822 ~v0 ~v1 v2 = du_refInputs_2822 v2
du_refInputs_2822 ::
  T_GeneralizeTel_41121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3378
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.reqSignerHashes
d_reqSignerHashes_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> [AgdaAny]
d_reqSignerHashes_2824 ~v0 ~v1 v2 = du_reqSignerHashes_2824 v2
du_reqSignerHashes_2824 :: T_GeneralizeTel_41121 -> [AgdaAny]
du_reqSignerHashes_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3408
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> Maybe AgdaAny
d_scriptIntegrityHash_2826 ~v0 ~v1 v2
  = du_scriptIntegrityHash_2826 v2
du_scriptIntegrityHash_2826 ::
  T_GeneralizeTel_41121 -> Maybe AgdaAny
du_scriptIntegrityHash_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3410
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txADhash
d_txADhash_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> Maybe AgdaAny
d_txADhash_2828 ~v0 ~v1 v2 = du_txADhash_2828 v2
du_txADhash_2828 :: T_GeneralizeTel_41121 -> Maybe AgdaAny
du_txADhash_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3394
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txId
d_txId_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> AgdaAny
d_txId_2840 ~v0 ~v1 v2 = du_txId_2840 v2
du_txId_2840 :: T_GeneralizeTel_41121 -> AgdaAny
du_txId_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txIns
d_txIns_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2842 ~v0 ~v1 v2 = du_txIns_2842 v2
du_txIns_2842 ::
  T_GeneralizeTel_41121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3376
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txOuts
d_txOuts_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2846 ~v0 ~v1 v2 = du_txOuts_2846 v2
du_txOuts_2846 ::
  T_GeneralizeTel_41121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_2846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3382
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txVldt
d_txVldt_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2848 ~v0 ~v1 v2 = du_txVldt_2848 v2
du_txVldt_2848 ::
  T_GeneralizeTel_41121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3392
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.scripts
d_scripts_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2854 ~v0 ~v1 v2 = du_scripts_2854 v2
du_scripts_2854 ::
  T_GeneralizeTel_41121 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_2854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txdats
d_txdats_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> [AgdaAny]
d_txdats_2858 ~v0 ~v1 v2 = du_txdats_2858 v2
du_txdats_2858 :: T_GeneralizeTel_41121 -> [AgdaAny]
du_txdats_2858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3510
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txrdmrs
d_txrdmrs_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2860 ~v0 ~v1 v2 = du_txrdmrs_2860 v2
du_txrdmrs_2860 ::
  T_GeneralizeTel_41121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_2860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3512
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.vkSigs
d_vkSigs_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_41121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2862 ~v0 ~v1 v2 = du_vkSigs_2862 v2
du_vkSigs_2862 ::
  T_GeneralizeTel_41121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
         (coe d_'46'generalizedField'45'tx_41113 (coe v0)))
-- Ledger.Conway.Specification.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_2934 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2570
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3384
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                             (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3506
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
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
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                      (coe v0))))
                             v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2750
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                   (coe v3))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                   (coe v2)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_426
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3506
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3392
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                (coe v2)))
                          v5)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3646
                     (coe v0) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                        (coe v3)))))
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
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                   (coe v0))))
                          (coe v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_426
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3506
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                      (coe v2)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8746'__708
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_mapPartial_604
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2750
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3408
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                           (coe v2)))))
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
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                      (coe v0)))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3508
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__758
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased
                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2750
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3598
                                 (coe v0) (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                    (coe v3))))))
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
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                      (coe v0)))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'65340'__758
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased
                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (\ v6 ->
                                         coe
                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2750
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                            (coe v2))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3598
                                         (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                            (coe v3)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_426
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3508
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                 (coe v2))))))
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
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                               (coe v0))))))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3510
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                         (coe v2))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_mapPartial_604
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2834
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                      (coe v3))
                                   (coe v2) (coe v5))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2818
                                        (coe v5)))
                                (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
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
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1310
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1308
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3376
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                       (coe v2)))))))
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                                  (coe v0))))))
                                   (coe v5)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du__'8746'__708
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                         (MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (\ v6 ->
                                            coe
                                              MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2834
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                                    (coe v3))
                                                 (coe v2) (coe v6))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v7 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2818
                                                      (coe v6)))
                                              (coe
                                                 (\ v7 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
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
                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1310
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1308
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3376
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                                     (coe v2))))))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du__'8746'__708
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2818)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3382
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2818)
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
                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                        erased
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1310
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1308
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3378
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                                        (coe v2))))))))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3510
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                    (coe v2)))))
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
                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                            () erased
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1308
                                               (coe v0)))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (\ v6 ->
                                               coe
                                                 MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                 (coe
                                                    MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2822
                                                    (coe v0)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                                       (coe v3))
                                                    (coe v2)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe v6)))
                                                 (coe
                                                    MAlonzo.Code.Level.C_lift_20
                                                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                 (coe
                                                    (\ v7 ->
                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2496
                                                         (coe v0) (coe v1)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v6))))
                                                 (coe
                                                    (\ v7 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2750
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                                  (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3512
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                          (coe v2)))))
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
                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased
                                            () erased
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1308
                                               (coe v0)))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3512
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                                  (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                         (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2822
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                               (coe v3))
                                            (coe v2)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Level.C_lift_20
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2496
                                                 (coe v0) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                                    (coe v2))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v5))))
                                         (coe
                                            (\ v6 ->
                                               coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2750
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                          (coe v2))))))
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                                  (coe v0))))
                                         (coe v5)
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
                                               (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                                        (coe v0)))))
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_dom_586
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_422
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1966
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2424
                                                     (coe v4))))
                                            (coe
                                               du_allowedLanguages_2706 (coe v0) (coe v2)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                                  (coe v3))))))
                                 (coe
                                    du_languages_2700 (coe v0) (coe v2)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                       (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1312
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3394
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                          (coe v2)))
                                    (coe
                                       MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                       MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                       (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1312
                                                (coe v0))))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3538
                                          (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1360
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3410
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
                                          (coe v2)))
                                    (coe
                                       d_hashScriptIntegrity_2762 (coe v0) (coe v1)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2424
                                          (coe v4))
                                       (coe
                                          du_languages_2700 (coe v0) (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440
                                             (coe v3)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3512
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                             (coe v2)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3510
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
                                             (coe v2))))))))))))))
-- Ledger.Conway.Specification.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_41113 ::
  T_GeneralizeTel_41121 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518
d_'46'generalizedField'45'tx_41113 v0
  = case coe v0 of
      C_mkGeneralizeTel_41123 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_41115 ::
  T_GeneralizeTel_41121 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_'46'generalizedField'45's_41115 v0
  = case coe v0 of
      C_mkGeneralizeTel_41123 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_41117 ::
  T_GeneralizeTel_41121 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2414
d_'46'generalizedField'45'Γ_41117 v0
  = case coe v0 of
      C_mkGeneralizeTel_41123 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_41119 ::
  T_GeneralizeTel_41121 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_'46'generalizedField'45's''_41119 v0
  = case coe v0 of
      C_mkGeneralizeTel_41123 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_41121 a0 a1 = ()
data T_GeneralizeTel_41121
  = C_mkGeneralizeTel_41123 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2414
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
