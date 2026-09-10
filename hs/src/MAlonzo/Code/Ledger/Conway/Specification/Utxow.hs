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
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
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
d_Datum_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_90 = erased
-- _.ExUnits
d_ExUnits_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_192 = erased
-- _.Hashable-Script
d_Hashable'45'Script_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
         (coe v0))
-- _.IsBootstrapAddr
d_IsBootstrapAddr_402 a0 a1 = ()
-- _.IsBootstrapAddr?
d_IsBootstrapAddr'63'_404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_404 ~v0 = du_IsBootstrapAddr'63'_404
du_IsBootstrapAddr'63'_404 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_404
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- _.Language
d_Language_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_434 = erased
-- _.PParams
d_PParams_478 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_520 = erased
-- _.Redeemer
d_Redeemer_522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_522 = erased
-- _.ScriptHash
d_ScriptHash_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_544 = erased
-- _.Tx
d_Tx_624 a0 = ()
-- _.TxBody
d_TxBody_628 a0 = ()
-- _.TxOut
d_TxOut_640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_640 = erased
-- _.UTxO
d_UTxO_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_648 = erased
-- _.isKeyHashObj
d_isKeyHashObj_746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_746 ~v0 = du_isKeyHashObj_746
du_isKeyHashObj_746 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_746
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- _.isScriptObj
d_isScriptObj_766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_766 ~v0 = du_isScriptObj_766
du_isScriptObj_766 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_766
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- _.isSigned
d_isSigned_770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_770 = erased
-- _.refScripts
d_refScripts_820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3720
      (coe v0)
-- _.toP1Script
d_toP1Script_836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_836 ~v0 = du_toP1Script_836
du_toP1Script_836 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_836
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422
-- _.txscripts
d_txscripts_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3768
      (coe v0)
-- _.validP1Script
d_validP1Script_860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_860 = erased
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
-- _.PParams.costmdls
d_costmdls_1444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
         (coe v0))
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
-- Ledger.Conway.Specification.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2040 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Utxow._.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'UTxOEnv_2060 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2060
du_HasPParams'45'UTxOEnv_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'UTxOEnv_2060
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasPParams'45'UTxOEnv_2546
-- Ledger.Conway.Specification.Utxow._.UTxOEnv
d_UTxOEnv_2080 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.UTxOState
d_UTxOState_2084 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.pparams
d_pparams_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2490 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2500
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.slot
d_slot_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2490 ->
  AgdaAny
d_slot_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2498 (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOEnv.treasury
d_treasury_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2490 ->
  Integer
d_treasury_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2502
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.deposits
d_deposits_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2520
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.donations
d_donations_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  Integer
d_donations_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2522
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.fees
d_fees_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  Integer
d_fees_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2518 (coe v0)
-- Ledger.Conway.Specification.Utxow._.UTxOState.utxo
d_utxo_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516 (coe v0)
-- Ledger.Conway.Specification.Utxow._.credentialToP2Script
d_credentialToP2Script_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_credentialToP2Script_2232 v0 ~v1
  = du_credentialToP2Script_2232 v0
du_credentialToP2Script_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_credentialToP2Script_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2896
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.credsNeeded
d_credsNeeded_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2234 v0 ~v1 = du_credsNeeded_2234 v0
du_credsNeeded_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.rdptr
d_rdptr_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2426 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2242 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2570
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Utxow._.txOutToDataHash
d_txOutToDataHash_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2246 ~v0 ~v1 = du_txOutToDataHash_2246
du_txOutToDataHash_2246 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2246
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2892
-- Ledger.Conway.Specification.Utxow._.txOutToP2Script
d_txOutToP2Script_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2248 v0 ~v1 = du_txOutToP2Script_2248 v0
du_txOutToP2Script_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2908
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.DCert
d_DCert_2288 a0 a1 = ()
-- Ledger.Conway.Specification.Utxow._.d
d_d_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_d_2668 ~v0 v1 = du_d_2668 v1
du_d_2668 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_d_2668 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.HasInlineDatum
d_HasInlineDatum_2670 a0 a1 a2 = ()
newtype T_HasInlineDatum_2670 = C_InlineDatum_2674 AgdaAny
-- Ledger.Conway.Specification.Utxow._.HasDataHash
d_HasDataHash_2676 a0 a1 a2 = ()
newtype T_HasDataHash_2676 = C_hasDataHash_2680 AgdaAny
-- Ledger.Conway.Specification.Utxow.Dec-HasInlineDatum
d_Dec'45'HasInlineDatum_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasInlineDatum_2684 ~v0 ~v1 v2
  = du_Dec'45'HasInlineDatum_2684 v2
du_Dec'45'HasInlineDatum_2684 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasInlineDatum_2684 v0
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
                                               (coe C_InlineDatum_2674 v8)))
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
-- Ledger.Conway.Specification.Utxow.Dec-HasDataHash
d_Dec'45'HasDataHash_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'HasDataHash_2700 ~v0 ~v1 v2
  = du_Dec'45'HasDataHash_2700 v2
du_Dec'45'HasDataHash_2700 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'HasDataHash_2700 v0
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
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                    -> coe
                                         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe C_hasDataHash_2680 v8)))
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
-- Ledger.Conway.Specification.Utxow.IsConwayCert
d_IsConwayCert_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354 -> ()
d_IsConwayCert_2714 = erased
-- Ledger.Conway.Specification.Utxow.IsConwayCert?
d_IsConwayCert'63'_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsConwayCert'63'_2716 ~v0 ~v1 v2 = du_IsConwayCert'63'_2716 v2
du_IsConwayCert'63'_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsConwayCert'63'_2716 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1356 v1 v2 v3 v4
           -> case coe v2 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1358 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1360 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1362 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1364 v1 v2 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1366 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1368 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1370 v1 v2
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Utxow._._.UsesV3Features
d_UsesV3Features_2790 a0 a1 a2 = ()
data T_UsesV3Features_2790
  = C_HasVotes_2792 | C_HasProps_2794 | C_HasDonation_2796 |
    C_HasTreasure_2798 |
    C_HasConwayCerts_2800 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Conway.Specification.Utxow.Dec-UsesV3Features
d_Dec'45'UsesV3Features_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'UsesV3Features_2804 ~v0 ~v1 v2
  = du_Dec'45'UsesV3Features_2804 v2
du_Dec'45'UsesV3Features_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'UsesV3Features_2804 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3512 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
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
                                     (coe C_HasProps_2794))))
                     (:) v19 v20
                       -> coe
                            MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                            (coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                  (coe C_HasVotes_2792)))
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
                                                  (coe C_HasTreasure_2798)))
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                       -> let v20
                                                = coe
                                                    MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                                                       (coe du_IsConwayCert'63'_2716))
                                                    (coe v6) in
                                          coe
                                            (case coe v20 of
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                 -> if coe v21
                                                      then case coe v22 of
                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                               -> coe
                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                       (coe v21)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                          (coe
                                                                             C_HasConwayCerts_2800
                                                                             (coe v23))))
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      else coe
                                                             seq (coe v22)
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v21)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                               _ -> MAlonzo.RTE.mazUnreachableError)
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
                                    (coe C_HasVotes_2792)))
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
                                           (coe C_HasDonation_2796)))
                              _ -> coe v19
                       (:) v20 v21
                         -> coe
                              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                    (coe C_HasVotes_2792)))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.languages
d_languages_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny] -> [AgdaAny]
d_languages_2844 v0 ~v1 v2 v3 v4 = du_languages_2844 v0 v2 v3 v4
du_languages_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny] -> [AgdaAny]
du_languages_2844 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_436
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
            (coe v0)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1266
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                    (coe v0)))
              (coe
                 MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                       (coe v0)))
                 v4)
              (coe
                 MAlonzo.Code.Class.IsSet.d_toSet_526
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590) v3))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3768
            (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Utxow.allowedLanguages
d_allowedLanguages_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_allowedLanguages_2854 v0 ~v1 v2 v3
  = du_allowedLanguages_2854 v0 v2 v3
du_allowedLanguages_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_allowedLanguages_2854 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.ToBool.du_if_then_else__38
         (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
               (coe
                  MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                  (coe du_os_2904 (coe v0) (coe v1) (coe v2)))
               (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
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
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                     (coe du_txb_2864 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3478
                     (coe du_txb_2864 (coe v1))))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                 (coe
                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                 (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_226
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                          (coe v0))))))
         (coe
            (\ v3 ->
               MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                 (coe
                    MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__38
            (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe du_os_2904 (coe v0) (coe v1) (coe v2)))
                  (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                  (coe du_Dec'45'UsesV3Features_2804 (coe du_txb_2864 (coe v1)))
                  (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                    (coe
                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                    (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                             (coe v0))))))
            (coe
               (\ v3 ->
                  MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                    (coe
                       MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__38
            (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                  (coe
                     MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                     (coe
                        (\ v3 ->
                           coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe du_os_2904 (coe v0) (coe v1) (coe v2)))
                  (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                     (coe du_Dec'45'UsesV3Features_2804 (coe du_txb_2864 (coe v1)))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                     (coe
                        MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                        (coe du_Dec'45'HasInlineDatum_2684)
                        (coe du_os_2904 (coe v0) (coe v1) (coe v2)))
                     (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_336
                    (coe
                       MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_346
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                    (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                             (coe v0))))))
            (coe
               (\ v3 ->
                  MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                    (coe
                       MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))))
-- Ledger.Conway.Specification.Utxow._.txb
d_txb_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
d_txb_2864 ~v0 ~v1 v2 ~v3 = du_txb_2864 v2
du_txb_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
du_txb_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
      (coe v0)
-- Ledger.Conway.Specification.Utxow._.os
d_os_2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_os_2904 v0 ~v1 v2 v3 = du_os_2904 v0 v2 v3
du_os_2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_os_2904 v0 v1 v2
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
            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2570
            (coe du_txb_2864 (coe v1))))
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
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                  (coe du_txb_2864 (coe v1)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3478
                  (coe du_txb_2864 (coe v1))))))
-- Ledger.Conway.Specification.Utxow._.usesBootstrapAddr
d_usesBootstrapAddr_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesBootstrapAddr_2906 = erased
-- Ledger.Conway.Specification.Utxow._.usesV3Features
d_usesV3Features_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesV3Features_2912 = erased
-- Ledger.Conway.Specification.Utxow._.usesV2Features
d_usesV2Features_2914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_usesV2Features_2914 = erased
-- Ledger.Conway.Specification.Utxow.hashScriptIntegrity
d_hashScriptIntegrity_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> Maybe AgdaAny
d_hashScriptIntegrity_2918 v0 v1 v2 v3 v4 v5
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
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
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
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
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
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
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
                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2664
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_getLanguageView_2548
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
-- Ledger.Conway.Specification.Utxow.TxOutSpendable-PlutusV1
d_TxOutSpendable'45'PlutusV1_2954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TxOutSpendable'45'PlutusV1_2954 = erased
-- Ledger.Conway.Specification.Utxow.TxOutSpendable-PlutusV2
d_TxOutSpendable'45'PlutusV2_2970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_TxOutSpendable'45'PlutusV2_2970 = erased
-- Ledger.Conway.Specification.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2988 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__2988
  = C_UTXOW'45'inductive_3096 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxow._.txAD
d_txAD_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> Maybe AgdaAny
d_txAD_2994 ~v0 ~v1 v2 = du_txAD_2994 v2
du_txAD_2994 :: T_GeneralizeTel_63817 -> Maybe AgdaAny
du_txAD_2994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3658
      (coe d_'46'generalizedField'45'tx_63809 (coe v0))
-- Ledger.Conway.Specification.Utxow._.body
d_body_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
d_body_2996 ~v0 ~v1 v2 = du_body_2996 v2
du_body_2996 ::
  T_GeneralizeTel_63817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
du_body_2996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
      (coe d_'46'generalizedField'45'tx_63809 (coe v0))
-- Ledger.Conway.Specification.Utxow._.wits
d_wits_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3616
d_wits_3000 ~v0 ~v1 v2 = du_wits_3000 v2
du_wits_3000 ::
  T_GeneralizeTel_63817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3616
du_wits_3000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
      (coe d_'46'generalizedField'45'tx_63809 (coe v0))
-- Ledger.Conway.Specification.Utxow._.refInputs
d_refInputs_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3010 ~v0 ~v1 v2 = du_refInputs_3010 v2
du_refInputs_3010 ::
  T_GeneralizeTel_63817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.reqSignerHashes
d_reqSignerHashes_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> [AgdaAny]
d_reqSignerHashes_3012 ~v0 ~v1 v2 = du_reqSignerHashes_3012 v2
du_reqSignerHashes_3012 :: T_GeneralizeTel_63817 -> [AgdaAny]
du_reqSignerHashes_3012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.scriptIntegrityHash
d_scriptIntegrityHash_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> Maybe AgdaAny
d_scriptIntegrityHash_3014 ~v0 ~v1 v2
  = du_scriptIntegrityHash_3014 v2
du_scriptIntegrityHash_3014 ::
  T_GeneralizeTel_63817 -> Maybe AgdaAny
du_scriptIntegrityHash_3014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3510
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txADhash
d_txADhash_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> Maybe AgdaAny
d_txADhash_3016 ~v0 ~v1 v2 = du_txADhash_3016 v2
du_txADhash_3016 :: T_GeneralizeTel_63817 -> Maybe AgdaAny
du_txADhash_3016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txId
d_txId_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> AgdaAny
d_txId_3028 ~v0 ~v1 v2 = du_txId_3028 v2
du_txId_3028 :: T_GeneralizeTel_63817 -> AgdaAny
du_txId_3028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txIns
d_txIns_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3030 ~v0 ~v1 v2 = du_txIns_3030 v2
du_txIns_3030 ::
  T_GeneralizeTel_63817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txOuts
d_txOuts_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3034 ~v0 ~v1 v2 = du_txOuts_3034 v2
du_txOuts_3034 ::
  T_GeneralizeTel_63817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txVldt
d_txVldt_3036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3036 ~v0 ~v1 v2 = du_txVldt_3036 v2
du_txVldt_3036 ::
  T_GeneralizeTel_63817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.scripts
d_scripts_3042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3042 ~v0 ~v1 v2 = du_scripts_3042 v2
du_scripts_3042 ::
  T_GeneralizeTel_63817 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_3042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3628
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txdats
d_txdats_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> [AgdaAny]
d_txdats_3046 ~v0 ~v1 v2 = du_txdats_3046 v2
du_txdats_3046 :: T_GeneralizeTel_63817 -> [AgdaAny]
du_txdats_3046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3630
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.txrdmrs
d_txrdmrs_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3048 ~v0 ~v1 v2 = du_txrdmrs_3048 v2
du_txrdmrs_3048 ::
  T_GeneralizeTel_63817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_3048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow._.vkSigs
d_vkSigs_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_63817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_3050 ~v0 ~v1 v2 = du_vkSigs_3050 v2
du_vkSigs_3050 ::
  T_GeneralizeTel_63817 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3626
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
         (coe d_'46'generalizedField'45'tx_63809 (coe v0)))
-- Ledger.Conway.Specification.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_3130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2490 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_3130 v0 v1 v2 v3 v4
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
                    (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                          (coe v0)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2662
                       v0
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3484
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                             (coe v2))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3626
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
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
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                (coe v0)))
                          (coe
                             MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                      (coe v0))))
                             v5)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_mapPartial_604
                             (MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
                                (coe v0)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                   (coe v3))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                   (coe v2)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3626
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
                                      (coe v2)))))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3492
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                (coe v2)))
                          v5)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_604
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3768
                     (coe v0) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
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
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                         (coe v0)))))
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_586
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3626
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
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
                           MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3508
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
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
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                      (coe v0)))
                                (coe v5)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_426
                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                            (coe v0))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3628
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
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
                              (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_mapPartial_604
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_426
                              (MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3720
                                 (coe v0) (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
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
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
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
                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (\ v6 ->
                                         coe
                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                            (coe v2))))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_426
                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3720
                                         (coe v0) (coe v2)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                            (coe v3)))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_426
                           (MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3628
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                     (coe v0)))))))
                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3630
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2908
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                      (coe v3))
                                   (coe v2) (coe v5))
                                (coe
                                   MAlonzo.Code.Level.C_lift_20
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2892
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
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                                          (coe v0))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                    (coe v3))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
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
                                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2908
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                    (coe v3))
                                                 (coe v2) (coe v6))
                                              (coe
                                                 MAlonzo.Code.Level.C_lift_20
                                                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                              (coe
                                                 (\ v7 ->
                                                    coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2892
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
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                                                        (coe v0))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2892)
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_range_588
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3482
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                     (coe v2)))))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                            (MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToDataHash_2892)
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
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                                                           (coe v0))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3478
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                (coe v0)))))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3630
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
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
                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2896
                                                    (coe v0)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
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
                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2570
                                                         (coe v0) (coe v1)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v6))))
                                                 (coe
                                                    (\ v7 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                  (coe v3))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                  (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
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
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credentialToP2Script_2896
                                            (coe v0)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                               (coe v3))
                                            (coe v2)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Level.C_lift_20
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_rdptr_2570
                                                 (coe v0) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                    (coe v2))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v5))))
                                         (coe
                                            (\ v6 ->
                                               coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                          (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
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
                                               (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                        (coe v0)))))
                                            (coe
                                               MAlonzo.Code.Class.IsSet.du_dom_586
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2500
                                                     (coe v4))))
                                            (coe
                                               du_allowedLanguages_2854 (coe v0) (coe v2)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                  (coe v3))))))
                                 (coe
                                    du_languages_2844 (coe v0) (coe v2)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                       (coe v3))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                       (MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
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
                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                                            (coe
                                               (\ v6 ->
                                                  coe
                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                (coe v0)))
                                                          v6)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                (coe v0)))))
                                                    (coe du_Dec'45'HasDataHash_2700 (coe v5))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2908
                                               (coe v0)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                  (coe v3))
                                               (coe v2) (coe v5))))
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
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                             (coe v3))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
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
                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAll_30
                                               (coe
                                                  (\ v6 ->
                                                     coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                   (coe v0))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
                                                             (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                   (coe v0)))
                                                             v6)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2060
                                                                   (coe v0)))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_16
                                                          (coe du_Dec'45'HasDataHash_2700 (coe v5))
                                                          (coe
                                                             du_Dec'45'HasInlineDatum_2684
                                                             (coe v5)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_txOutToP2Script_2908
                                                  (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                     (coe v3))
                                                  (coe v2) (coe v5))))
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
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1356
                                                      (coe v0))
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1354
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                (coe v3))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3476
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1358
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3494
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1358
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3658
                                                (coe v2))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1408
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3510
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                (coe v2)))
                                          (coe
                                             d_hashScriptIntegrity_2918 (coe v0) (coe v1)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2500
                                                (coe v4))
                                             (coe
                                                du_languages_2844 (coe v0) (coe v2)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_mapPartial_604
                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_credsNeeded_2824
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516
                                                         (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3632
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
                                                   (coe v2)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3630
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
                                                   (coe v2))))))))))))))))
-- Ledger.Conway.Specification.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_63809 ::
  T_GeneralizeTel_63817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
d_'46'generalizedField'45'tx_63809 v0
  = case coe v0 of
      C_mkGeneralizeTel_63819 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-s
d_'46'generalizedField'45's_63811 ::
  T_GeneralizeTel_63817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_'46'generalizedField'45's_63811 v0
  = case coe v0 of
      C_mkGeneralizeTel_63819 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_63813 ::
  T_GeneralizeTel_63817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2490
d_'46'generalizedField'45'Γ_63813 v0
  = case coe v0 of
      C_mkGeneralizeTel_63819 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_63815 ::
  T_GeneralizeTel_63817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_'46'generalizedField'45's''_63815 v0
  = case coe v0 of
      C_mkGeneralizeTel_63819 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxow.GeneralizeTel
d_GeneralizeTel_63817 a0 a1 = ()
data T_GeneralizeTel_63817
  = C_mkGeneralizeTel_63819 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2490
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
