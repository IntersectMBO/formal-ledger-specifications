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

module MAlonzo.Code.Ledger.Conway.Specification.Script.Validation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.ListAction
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _.CostModel
d_CostModel_58 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_58 = erased
-- _.Credential
d_Credential_60 a0 = ()
-- _.T
d_T_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_72 = erased
-- _.THash
d_THash_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_74 = erased
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
-- _.Language
d_Language_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_384 = erased
-- _.PlutusScript
d_PlutusScript_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_418 = erased
-- _.PParams
d_PParams_422 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_466 = erased
-- _.Redeemer
d_Redeemer_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_468 = erased
-- _.Tx
d_Tx_570 a0 = ()
-- _.TxBody
d_TxBody_574 a0 = ()
-- _.TxOut
d_TxOut_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_586 = erased
-- _.UTxO
d_UTxO_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_594 = erased
-- _.PParams.Emax
d_Emax_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- _.PParams.a
d_a_1338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_1338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- _.PParams.a0
d_a0_1340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- _.PParams.b
d_b_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- _.PParams.nopt
d_nopt_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- _.PParams.prices
d_prices_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- _.PParams.pv
d_pv_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- _.Tx.body
d_body_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290
d_body_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
      (coe v0)
-- _.Tx.isValid
d_isValid_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  Bool
d_isValid_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3488
      (coe v0)
-- _.Tx.txAD
d_txAD_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  Maybe AgdaAny
d_txAD_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3490
      (coe v0)
-- _.Tx.txsize
d_txsize_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  Integer
d_txsize_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3486
      (coe v0)
-- _.Tx.wits
d_wits_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3448
d_wits_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3484
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3332
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  Maybe Integer
d_currentTreasury_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3356
      (coe v0)
-- _.TxBody.mint
d_mint_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  AgdaAny
d_mint_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3358
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3330
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [AgdaAny]
d_reqSignerHashes_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3360
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3362
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  Maybe AgdaAny
d_txADhash_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3346
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3338
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  Integer
d_txDonation_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3348
      (coe v0)
-- _.TxBody.txFee
d_txFee_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  Integer
d_txFee_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3340
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986]
d_txGovProposals_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3352
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906]
d_txGovVotes_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3350
      (coe v0)
-- _.TxBody.txId
d_txId_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  AgdaAny
d_txId_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3336
      (coe v0)
-- _.TxBody.txIns
d_txIns_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3328
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  Maybe AgdaAny
d_txNetworkId_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3354
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3334
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3344
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3342
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.ScriptPurpose
d_ScriptPurpose_2406 a0 a1 = ()
-- Ledger.Conway.Specification.Script.Validation._.TxInfo
d_TxInfo_2410 a0 a1 = ()
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.fee
d_fee_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  AgdaAny
d_fee_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_fee_2364
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.mint
d_mint_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  AgdaAny
d_mint_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_mint_2366
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.realizedInputs
d_realizedInputs_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_realizedInputs_2360
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.txCerts
d_txCerts_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txCerts_2368
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.txId
d_txId_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  AgdaAny
d_txId_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txId_2378
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.txOuts
d_txOuts_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txOuts_2362
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.txVldt
d_txVldt_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txVldt_2372
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.txWithdrawals
d_txWithdrawals_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txWithdrawals_2370
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.txdats
d_txdats_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  [AgdaAny]
d_txdats_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_txdats_2376
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.TxInfo.vkKey
d_vkKey_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338 ->
  [AgdaAny]
d_vkKey_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.d_vkKey_2374
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation.rdptr
d_rdptr_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2324 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_2452 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Cert_2326 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Cert_14)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfDCert_2392
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2426
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3338
                   (coe v2)))
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Rwrd_2328 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Rewrd_16)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfRewardAddress_2394
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2426
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3342
                   (coe v2)))
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Mint_2330 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Mint_12)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfPolicyId_2398
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2426
                   (coe v1))
                v4
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2408
                      (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3358
                      (coe v2))))
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Spend_2332 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Spend_10)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfTxIn_2396
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2426
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3328
                   (coe v2)))
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Vote_2334 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Vote_18)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfVote_2400
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2426
                   (coe v1))
                v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_918
                        (coe v5))
                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3350
                      (coe v2))))
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Propose_2336 v4
        -> coe
             MAlonzo.Code.Class.Functor.Core.du_fmap_22
             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
             () erased
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_Propose_20)
                  (coe v5))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfProposal_2402
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2426
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3352
                   (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.indexedRdmrs
d_indexedRdmrs_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2324 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_2524 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3464
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3484
                    (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1282
                          (coe v0))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v5
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3464
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3484
                                (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_2452 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v2))
         (coe v3))
-- Ledger.Conway.Specification.Script.Validation.getDatum
d_getDatum_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2324 ->
  Maybe AgdaAny
d_getDatum_2560 v0 ~v1 v2 v3 v4 = du_getDatum_2560 v0 v2 v3 v4
du_getDatum_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2324 ->
  Maybe AgdaAny
du_getDatum_2560 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Spend_2332 v5
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1516
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2) (coe v5)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1284
                               (coe v0))
                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1282
                               (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))))
                (coe
                   (\ v6 ->
                      case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                          -> case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> case coe v10 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                        -> case coe v11 of
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                                               -> case coe v13 of
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                      -> coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe v14)
                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                      -> coe
                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe du_m_2572 (coe v0) (coe v1))
                                                           (coe v14)
                                                           (coe
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1918
                                                                             (coe v0))))))
                                                              (coe v14)
                                                              (let v15
                                                                     = MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                                    v15
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                       (coe
                                                                          du_m_2572 (coe v0)
                                                                          (coe v1))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v11
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> coe v4)
-- Ledger.Conway.Specification.Script.Validation._.m
d_m_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2572 v0 ~v1 v2 ~v3 ~v4 = du_m_2572 v0 v2
du_m_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2572 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1918
                     (coe v0))))))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
            (coe
               MAlonzo.Code.Interface.TypeClasses.Hashable.d_hash_18
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1918
                              (coe v0)))))))
            (coe (\ v2 -> v2)))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3462
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3484
               (coe v1))))
-- Ledger.Conway.Specification.Script.Validation.txInfo
d_txInfo_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338
d_txInfo_2588 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_2588 v0 v4 v5
du_txInfo_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2338
du_txInfo_2588 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_constructor_2380
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
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1284
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1282
                  (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2408
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3358
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3338
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3342
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3344
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3360
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3462
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3484
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3336
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v2)))
-- Ledger.Conway.Specification.Script.Validation.credsNeeded
d_credsNeeded_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2706 v0 ~v1 v2 v3 = du_credsNeeded_2706 v0 v2 v3
du_credsNeeded_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2706 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Spend_2332
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
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
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1284
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1282
                        (coe v0))))
               (coe v1)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3328
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3332
                     (coe v2))))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_426
            (MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Rwrd_2328
                    (coe v3))
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                    (coe v3)))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
               (coe
                  MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3342
                     (coe v2)))))
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
               (\ v3 ->
                  coe
                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Cert_2326
                            (coe v3))
                         (coe v4))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1310
                       (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_456
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3338
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_426
                  (MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Mint_2330
                          (coe v3))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                          (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2408
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3358
                        (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_426
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Vote_2334
                             (coe v3))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1226
                             (coe v3)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_918
                                (coe v3))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3350
                              (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_604
                     (MAlonzo.Code.Axiom.Set.d_th_1516
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Class.ToBool.du_if_then_else__38
                          (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1004
                             (coe v3))
                          (coe
                             MAlonzo.Code.Level.C_lift_20
                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                          (coe
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.C_Propose_2336
                                        (coe v3))
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                        (coe v4)))))
                          (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3352
                           (coe v2))))))))
-- Ledger.Conway.Specification.Script.Validation.txOutToDataHash
d_txOutToDataHash_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2774 ~v0 ~v1 v2 = du_txOutToDataHash_2774 v2
du_txOutToDataHash_2774 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2774 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                      -> coe
                           MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72 (coe v5)
                           (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.credentialToP2Script
d_credentialToP2Script_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_credentialToP2Script_2778 v0 ~v1 v2 v3 v4
  = du_credentialToP2Script_2778 v0 v2 v3 v4
du_credentialToP2Script_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_credentialToP2Script_2778 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
         (coe v3))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
              erased
              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3608
                 (coe v0) (coe v4) (coe v2) (coe v1))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_424)))
-- Ledger.Conway.Specification.Script.Validation.txOutToP2Script
d_txOutToP2Script_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2790 v0 ~v1 v2 v3 v4
  = du_txOutToP2Script_2790 v0 v2 v3 v4
du_txOutToP2Script_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2790 v0 v1 v2 v3
  = coe
      du_credentialToP2Script_2778 (coe v0) (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
-- Ledger.Conway.Specification.Script.Validation.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_2796 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604
      (MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (d_toScriptInput_2808 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_credsNeeded_2706 (coe v0) (coe v4)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
            (coe v3)))
-- Ledger.Conway.Specification.Script.Validation._.toScriptInput
d_toScriptInput_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toScriptInput_2808 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
             (coe
                du_credentialToP2Script_2778 (coe v0) (coe v4) (coe v3) (coe v7))
             (coe
                (\ v8 ->
                   coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
                     erased (d_indexedRdmrs_2524 (coe v0) (coe v1) (coe v3) (coe v6))
                     (\ v9 ->
                        case coe v9 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                            -> coe
                                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                 MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
                                 erased
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_422
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1918
                                          (coe v0))
                                       (coe v2))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
                                       (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1918
                                             (coe v0)))
                                       v8)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1918
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1918
                                                (coe v0)))
                                          v8)
                                       (let v12
                                              = MAlonzo.Code.Axiom.Set.d_th_1516
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v12
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_422
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1918
                                                      (coe v0))
                                                   (coe v2)))))))
                                 (\ v12 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                               (coe
                                                  MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                  (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270)
                                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                  (coe
                                                     du_getDatum_2560 (coe v0) (coe v3) (coe v4)
                                                     (coe v6)))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_valContext_2432
                                                        v1
                                                        (coe
                                                           du_txInfo_2588 (coe v0) (coe v4)
                                                           (coe v3))
                                                        v6))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                               (coe v12)))))
                          _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.evalP2Scripts
d_evalP2Scripts_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2826 ~v0 v1 = du_evalP2Scripts_2826 v1
du_evalP2Scripts_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2826 v0
  = coe
      MAlonzo.Code.Data.Bool.ListAction.du_all_18
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_runPLCScript_2428
              v0
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
