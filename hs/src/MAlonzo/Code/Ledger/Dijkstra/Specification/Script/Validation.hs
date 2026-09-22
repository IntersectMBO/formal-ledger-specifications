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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation where

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
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _.CostModel
d_CostModel_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_CostModel_84 = erased
-- _.Credential
d_Credential_86 a0 = ()
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
-- _.ExUnits
d_ExUnits_226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_ExUnits_226 = erased
-- _.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
d_HasPolicy'45'GovProposal_488 ~v0
  = du_HasPolicy'45'GovProposal_488
du_HasPolicy'45'GovProposal_488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1254
du_HasPolicy'45'GovProposal_488
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346
-- _.HasRedeemers-Tx
d_HasRedeemers'45'Tx_494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3994
d_HasRedeemers'45'Tx_494 ~v0 = du_HasRedeemers'45'Tx_494
du_HasRedeemers'45'Tx_494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3994
du_HasRedeemers'45'Tx_494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4532
-- _.Hashable-Script
d_Hashable'45'Script_640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
         (coe v0))
-- _.P1Script
d_P1Script_724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_P1Script_724 = erased
-- _.PlutusScript
d_PlutusScript_730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_PlutusScript_730 = erased
-- _.PParams
d_PParams_734 a0 = ()
-- _.Redeemer
d_Redeemer_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Redeemer_780 = erased
-- _.RedeemerPtr
d_RedeemerPtr_782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_RedeemerPtr_782 = erased
-- _.Script
d_Script_816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Script_816 = erased
-- _.TopLevelTx
d_TopLevelTx_914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_914 = erased
-- _.Tx
d_Tx_920 a0 a1 = ()
-- _.TxIn
d_TxIn_936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxIn_936 = erased
-- _.TxOut
d_TxOut_938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TxOut_938 = erased
-- _.UTxO
d_UTxO_948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_UTxO_948 = erased
-- _.PParams.Emax
d_Emax_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_Emax_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- _.PParams.a
d_a_1996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_1996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- _.PParams.a0
d_a0_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- _.PParams.b
d_b_2000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- _.PParams.costmdlsAssoc
d_costmdlsAssoc_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_2014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_drepActivity_2014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_2016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_2018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_2020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- _.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- _.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- _.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- _.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_leiosMaxEBExUnits_2032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- _.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- _.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- _.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- _.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- _.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxBlockExUnits_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_2046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_maxTxExUnits_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- _.PParams.minPoolCost
d_minPoolCost_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- _.PParams.nopt
d_nopt_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- _.PParams.prices
d_prices_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny
d_prices_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- _.PParams.pv
d_pv_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- _.Tx.isValid
d_isValid_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  AgdaAny
d_isValid_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3816
      (coe v0)
-- _.Tx.txAuxData
d_txAuxData_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  Maybe AgdaAny
d_txAuxData_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3818
      (coe v0)
-- _.Tx.txBody
d_txBody_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3794
d_txBody_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
      (coe v0)
-- _.Tx.txSize
d_txSize_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  Integer
d_txSize_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3814
      (coe v0)
-- _.Tx.txWitnesses
d_txWitnesses_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3796
d_txWitnesses_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3812
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.ScriptPurpose
d_ScriptPurpose_3196 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Script.Validation._.SubTxInfo
d_SubTxInfo_3202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  ()
d_SubTxInfo_3202 = erased
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo
d_TxInfo_3204 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Script.Validation._.ScriptPurpose.data′
d_data'8242'_3212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  AgdaAny
d_data'8242'_3212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_data'8242'_3132
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.ScriptPurpose.tag
d_tag_3214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tag_40
d_tag_3214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_tag_3130
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.mint
d_mint_3218 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  AgdaAny
d_mint_3218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_mint_3174
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.realizedInputs
d_realizedInputs_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_realizedInputs_3168
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txBalanceIntervals
d_txBalanceIntervals_3222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txBalanceIntervals_3194
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txCerts
d_txCerts_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1388]
d_txCerts_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txCerts_3176
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txData
d_txData_3226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  [AgdaAny]
d_txData_3226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txData_3186
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txDirectDeposits
d_txDirectDeposits_3228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txDirectDeposits_3192
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txFee
d_txFee_3230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  Maybe Integer
d_txFee_3230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txFee_3172
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txGuards
d_txGuards_3232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txGuards_3184
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txId
d_txId_3234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  AgdaAny
d_txId_3234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txId_3188
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txInfoSubTxs
d_txInfoSubTxs_3236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  Maybe
    [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136]
d_txInfoSubTxs_3236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txInfoSubTxs_3190
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txOuts
d_txOuts_3238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txOuts_3170
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txVldt
d_txVldt_3240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txVldt_3180
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.txWithdrawals
d_txWithdrawals_3242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txWithdrawals_3178
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation._.TxInfo.vkKey
d_vkKey_3244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136 ->
  [AgdaAny]
d_vkKey_3244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_vkKey_3182
      (coe v0)
-- Ledger.Dijkstra.Specification.Script.Validation.rdptr
d_rdptr_3248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_3248 v0 v1 ~v2 v3 v4 = du_rdptr_3248 v0 v1 v3 v4
du_rdptr_3248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rdptr_3248 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Spend_42
               -> coe
                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                    () erased
                    (\ v6 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v6))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfTxIn_3192
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3224
                          (coe v1))
                       v5
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4174
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4570)
                          v2))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Mint_44
               -> coe
                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                    () erased
                    (\ v6 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v6))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfPolicyId_3194
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3224
                          (coe v1))
                       v5
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
                             (coe v0))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4214
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4578)
                             v2)))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Cert_46
               -> coe
                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                    () erased
                    (\ v6 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v6))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfDCert_3188
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3224
                          (coe v1))
                       v5
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4254
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4546)
                          v2))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Reward_48
               -> coe
                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                    () erased
                    (\ v6 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v6))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfRewardAddress_3190
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3224
                          (coe v1))
                       v5
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3884
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                             (coe v2))))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Vote_50
               -> coe
                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                    () erased
                    (\ v6 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v6))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfVote_3196
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3224
                          (coe v1))
                       v5
                       (coe
                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                          () erased
                          (\ v6 ->
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1022
                               (coe v6))
                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3892
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                                (coe v2)))))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Propose_52
               -> coe
                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                    () erased
                    (\ v6 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v6))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfProposal_3198
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3224
                          (coe v1))
                       v5
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3894
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                             (coe v2))))
             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Guard_54
               -> coe
                    MAlonzo.Code.Class.Functor.Core.du_fmap_22
                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
                    () erased
                    (\ v6 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v6))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfGuard_3200
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3224
                          (coe v1))
                       v5
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3906
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                             (coe v2))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Validation.indexedRdmrs
d_indexedRdmrs_3282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_3282 v0 v1 ~v2 v3 v4
  = du_indexedRdmrs_3282 v0 v1 v3 v4
du_indexedRdmrs_3282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_indexedRdmrs_3282 v0 v1 v2 v3
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
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4002
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4532)
                 v2)
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4002
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4532)
                             v2)))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe du_rdptr_3248 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Dijkstra.Specification.Script.Validation.getDatumSpend
d_getDatumSpend_3290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_getDatumSpend_3290 v0 ~v1 ~v2 v3 v4 v5
  = du_getDatumSpend_3290 v0 v3 v4 v5
du_getDatumSpend_3290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_getDatumSpend_3290 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v2) (coe v3)
              (coe
                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                 (coe
                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                       (coe v0))
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                       (coe v0)))
                 (coe v3)
                 (let v4
                        = MAlonzo.Code.Axiom.Set.d_th_1516
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v4
                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_570 (coe v2))))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                  -> case coe v7 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                         -> case coe v9 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                -> case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                       -> case coe v12 of
                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe v13)
                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                  (coe v0))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                                                  (coe v0))))))
                                                   (coe v13)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4294
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4614)
                                                      v1)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
-- Ledger.Dijkstra.Specification.Script.Validation.txInfo
d_txInfo_3324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136
d_txInfo_3324 v0 ~v1 v2 = du_txInfo_3324 v0 v2
du_txInfo_3324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136
du_txInfo_3324 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10
        -> coe
             (\ v2 v3 ->
                coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_constructor_3196
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
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                              (coe v0))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                              (coe v0))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4174
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4570)
                        v3))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4394
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4626)
                     v3)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3882
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                           (coe v3))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4214
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4578)
                     v3)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4254
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4546)
                     v3)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3884
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3886
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3916
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3906
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4294
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4614)
                     v3)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3878
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3910
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3912
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3))))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12
        -> coe
             (\ v2 v3 ->
                coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_constructor_3196
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
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                              (coe v0))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                              (coe v0))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3870
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                           (coe v3))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3876
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3900
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3880
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3884
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3886
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3916
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3906
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4294
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4614)
                     v3)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3878
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3910
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3912
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Validation.txInfoForPurpose
d_txInfoForPurpose_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136
d_txInfoForPurpose_3352 v0 ~v1 v2 v3 v4 v5
  = du_txInfoForPurpose_3352 v0 v2 v3 v4 v5
du_txInfoForPurpose_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136
du_txInfoForPurpose_3352 v0 v1 v2 v3 v4
  = case coe v1 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10
        -> case coe v4 of
             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134 v5 v6
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Guard_54
                      -> coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_constructor_3196
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_realizedInputs_3168
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txOuts_3170
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txFee_3172
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_mint_3174
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txCerts_3176
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txWithdrawals_3178
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txVldt_3180
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_vkKey_3182
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txGuards_3184
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txData_3186
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txId_3188
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe du_subInfos_3380 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txDirectDeposits_3192
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.d_txBalanceIntervals_3194
                              (coe du_base_3378 (coe v0) (coe v2) (coe v3)))
                    _ -> coe du_txInfo_3324 v0 v1 v2 v3
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12
        -> coe du_txInfo_3324 v0 v1 v2 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Validation._.base
d_base_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136
d_base_3378 v0 ~v1 ~v2 ~v3 v4 v5 = du_base_3378 v0 v4 v5
du_base_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136
du_base_3378 v0 v1 v2
  = coe
      du_txInfo_3324 v0
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
      v1 v2
-- Ledger.Dijkstra.Specification.Script.Validation._.subInfos
d_subInfos_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136]
d_subInfos_3380 v0 ~v1 ~v2 ~v3 v4 v5 = du_subInfos_3380 v0 v4 v5
du_subInfos_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3136]
du_subInfos_3380 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
      () erased
      (coe
         du_txInfo_3324 v0
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
         v1)
      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3904
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
            (coe v2)))
-- Ledger.Dijkstra.Specification.Script.Validation.txOutToDataHash
d_txOutToDataHash_3388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_3388 ~v0 ~v1 v2 = du_txOutToDataHash_3388 v2
du_txOutToDataHash_3388 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_3388 v0
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
-- Ledger.Dijkstra.Specification.Script.Validation.credentialToP2Script
d_credentialToP2Script_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
d_credentialToP2Script_3392 v0 ~v1 v2 v3
  = du_credentialToP2Script_3392 v0 v2 v3
du_credentialToP2Script_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
du_credentialToP2Script_3392 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
         (coe v1))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
              erased
              (coe
                 MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                       (coe v0)))
                 (coe v3) (coe v2))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678)))
-- Ledger.Dijkstra.Specification.Script.Validation.credentialToP1Script
d_credentialToP1Script_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
d_credentialToP1Script_3402 v0 ~v1 v2 v3
  = du_credentialToP1Script_3402 v0 v2 v3
du_credentialToP1Script_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> Maybe AgdaAny
du_credentialToP1Script_3402 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
         (coe v1))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
              erased
              (coe
                 MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                       (coe v0)))
                 (coe v3) (coe v2))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666)))
-- Ledger.Dijkstra.Specification.Script.Validation.txOutToP2Script
d_txOutToP2Script_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_3412 v0 ~v1 v2 v3
  = du_txOutToP2Script_3412 v0 v2 v3
du_txOutToP2Script_3412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_3412 v0 v1 v2
  = coe
      du_credentialToP2Script_3392 (coe v0)
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      (coe v1)
-- Ledger.Dijkstra.Specification.Script.Validation.credsNeeded
d_credsNeeded_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_3418 v0 ~v1 v2 v3 v4
  = du_credsNeeded_3418 v0 v2 v3 v4
du_credsNeeded_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_3418 v0 v1 v2 v3
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
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Spend_42)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1414
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1412
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4174
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4570)
                     v3)
                  (coe du_collateralInputs_3428 (coe v1) (coe v3))))))
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
            (\ v4 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Reward_48)
                    (coe v4))
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124
                    (coe v4)))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_586
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_590)
               (coe
                  MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_70
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3884
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                        (coe v3))))))
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
               (\ v4 ->
                  coe
                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                    (\ v5 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Cert_46)
                            (coe v4))
                         (coe v5))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_cwitness_1404
                       (coe v4)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_456
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1516
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4254
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4546)
                     v3)))
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
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Mint_44)
                          (coe v4))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                          (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2726
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4214
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4578)
                        v3)))
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
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Vote_50)
                             (coe v4))
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1124
                             (coe v4)))
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
                           (\ v4 ->
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1022
                                (coe v4))
                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3892
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                                 (coe v3))))))
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
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Class.ToBool.du_if_then_else__38
                             (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1262
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1346)
                                v4)
                             (coe
                                MAlonzo.Code.Level.C_lift_20
                                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                             (coe
                                (\ v5 ->
                                   coe
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Propose_52)
                                           (coe v4))
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                           (coe v5)))))
                             (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_456
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3894
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                                 (coe v3)))))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_map_426
                        (MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Guard_54)
                                (coe v4))
                             (coe v4))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3906
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                              (coe v3)))))))))
-- Ledger.Dijkstra.Specification.Script.Validation._.collateralInputs
d_collateralInputs_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_3428 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_collateralInputs_3428 v5 v6
du_collateralInputs_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_3428 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10
        -> coe
             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3874
             (coe
                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
                (coe v1))
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12
        -> coe
             MAlonzo.Code.Axiom.Set.du_'8709'_470
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1516
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Validation.allCredsNeeded
d_allCredsNeeded_3456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allCredsNeeded_3456 v0 ~v1 v2 v3
  = du_allCredsNeeded_3456 v0 v2 v3
du_allCredsNeeded_3456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allCredsNeeded_3456 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_230
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.du__'8746'__708
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v3)
              (coe
                 du_credsNeeded_3418 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelSub_12)
                 (coe v1) (coe v4))))
      (coe
         du_credsNeeded_3418 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
         (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3904
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3810
            (coe v2)))
-- Ledger.Dijkstra.Specification.Script.Validation.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_3466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_3466 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Base.du_concat_244
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426
         (MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (d_toScript_3514
            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6))
         (coe du_credsNeeded_3418 (coe v0) (coe v2) (coe v5) (coe v4)))
-- Ledger.Dijkstra.Specification.Script.Validation._.context
d_context_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  AgdaAny
d_context_3480 v0 v1 v2 ~v3 v4 v5 ~v6 v7
  = du_context_3480 v0 v1 v2 v4 v5 v7
du_context_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  AgdaAny
du_context_3480 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_valContext_3228
      v1
      (coe
         du_txInfoForPurpose_3352 (coe v0) (coe v2) (coe v4) (coe v3)
         (coe v5))
      v5
-- Ledger.Dijkstra.Specification.Script.Validation._.getScript
d_getScript_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getScript_3484 v0 v1 ~v2 v3 v4 ~v5 v6 v7 v8
  = du_getScript_3484 v0 v1 v3 v4 v6 v7 v8
du_getScript_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getScript_3484 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
      (coe
         MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
            (coe v5))
         (coe
            (\ v7 ->
               coe
                 MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                 MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
                 erased
                 (coe
                    MAlonzo.Code.Ledger.Prelude.du_lookupHash_104
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1406
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                          (coe v0)))
                    (coe v7) (coe v4))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678))))
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
              erased
              (coe du_indexedRdmrs_3282 (coe v0) (coe v1) (coe v3) (coe v6))
              (\ v8 ->
                 case coe v8 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
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
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                   (coe v0))
                                (coe v2))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                      (coe v0)))
                                v7)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                         (coe v0)))
                                   v7)
                                (let v11
                                       = MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_354 v11
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                                               (coe v0))
                                            (coe v2)))))))
                          (\ v11 ->
                             coe
                               MAlonzo.Code.Class.Monad.Core.d_return_20
                               MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                                        (coe v11)))))
                   _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Dijkstra.Specification.Script.Validation._.assembleData
d_assembleData_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  [[AgdaAny]]
d_assembleData_3502 v0 v1 v2 ~v3 v4 v5 ~v6 v7 v8
  = du_assembleData_3502 v0 v1 v2 v4 v5 v7 v8
du_assembleData_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3124 ->
  [[AgdaAny]]
du_assembleData_3502 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.C_'10214'_'44'_'10215''738''7510'_3134 v7 v8
        -> let v9
                 = coe
                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                           (coe
                              du_context_3480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                              (coe v6)))) in
           coe
             (case coe v7 of
                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_Spend_42
                  -> coe
                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du_fromMaybe_274
                             (coe du_getDatumSpend_3290 (coe v0) (coe v3) (coe v4) (coe v8)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                             (coe
                                MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                (coe
                                   du_context_3480 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                   (coe v6)))))
                _ -> coe v9)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Validation._.toScript
d_toScript_3514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3790 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toScript_3514 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
        -> coe
             MAlonzo.Code.Data.List.Base.du_concatMap_246
             (coe
                (\ v10 ->
                   case coe v10 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                       -> case coe v12 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                              -> coe
                                   seq (coe v14)
                                   (coe
                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__22
                                      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'List_12 ()
                                      erased () erased
                                      (coe
                                         du_assembleData_3502 (coe v0) (coe v1) (coe v2) (coe v4)
                                         (coe v5) (coe v13) (coe v8))
                                      (\ v15 ->
                                         coe
                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v15) (coe v14)))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError))
             (coe
                MAlonzo.Code.Data.List.Base.du_fromMaybe_274
                (coe
                   du_getScript_3484 (coe v0) (coe v1) (coe v3) (coe v4) (coe v6)
                   (coe v9) (coe v8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Specification.Script.Validation.evalP2Scripts
d_evalP2Scripts_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_3532 v0 ~v1 = du_evalP2Scripts_3532 v0
du_evalP2Scripts_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_3532 v0
  = coe
      MAlonzo.Code.Data.Bool.ListAction.du_all_18
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2202
                       (coe v0)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
