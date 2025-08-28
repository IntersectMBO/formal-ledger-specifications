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
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
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
d_CostModel_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_48 = erased
-- _.Credential
d_Credential_50 a0 = ()
-- _.T
d_T_56 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_56 = erased
-- _.THash
d_THash_58 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_58 = erased
-- _.Datum
d_Datum_62 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_62 = erased
-- _.ExUnits
d_ExUnits_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_152 = erased
-- _.GovProposal
d_GovProposal_166 a0 = ()
-- _.THash
d_THash_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_260 = erased
-- _.Language
d_Language_268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_268 = erased
-- _.PlutusScript
d_PlutusScript_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_296 = erased
-- _.PParams
d_PParams_300 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_328 = erased
-- _.Redeemer
d_Redeemer_330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_330 = erased
-- _.RwdAddr
d_RwdAddr_332 a0 = ()
-- _.ScriptHash
d_ScriptHash_348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_348 = erased
-- _.Slot
d_Slot_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_392 = erased
-- _.Tx
d_Tx_418 a0 = ()
-- _.TxBody
d_TxBody_420 a0 = ()
-- _.TxIn
d_TxIn_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_426 = erased
-- _.TxOut
d_TxOut_428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_428 = erased
-- _.UTxO
d_UTxO_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_434 = erased
-- _.Value
d_Value_454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_454 = erased
-- _.Voter
d_Voter_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Voter_458 = erased
-- _.Wdrl
d_Wdrl_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Wdrl_460 = erased
-- _.GovActions.GovProposal
d_GovProposal_786 a0 = ()
-- _.GovActions.GovProposal.action
d_action_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_808
d_action_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_876
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_780
d_anchor_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_886
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  Integer
d_deposit_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_882
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  Maybe AgdaAny
d_policy_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_880
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  AgdaAny
d_prevAction_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_878
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98
d_returnAddr_858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_884
      (coe v0)
-- _.PParams.Emax
d_Emax_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_Emax_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_418
      (coe v0)
-- _.PParams.a
d_a_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_a_1050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_390 (coe v0)
-- _.PParams.a0
d_a0_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_422 (coe v0)
-- _.PParams.b
d_b_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_b_1054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_392 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_ccMaxTermLength_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_434
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_ccMinSize_1058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_432
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_coinsPerUTxOByte_1060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_402
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_collateralPercentage_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_424
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_costmdls_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_426
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_drepActivity_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_442
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_drepDeposit_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_440
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_238
d_drepThresholds_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_430
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_govActionDeposit_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_438
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_govActionLifetime_1074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_436
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_keyDeposit_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_394
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_maxBlockExUnits_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_382
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxBlockSize_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_374
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxCollateralInputs_1082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_386
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxHeaderSize_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_378
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxRefScriptSizePerBlock_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_410
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxRefScriptSizePerTx_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_408
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_maxTxExUnits_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_380
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxTxSize_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_376
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_maxValSize_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_384
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_406
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_minUTxOValue_1098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_416
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_398
      (coe v0)
-- _.PParams.nopt
d_nopt_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_nopt_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_420
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  Integer
d_poolDeposit_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_396
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_280
d_poolThresholds_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_428
      (coe v0)
-- _.PParams.prices
d_prices_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  AgdaAny
d_prices_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_404
      (coe v0)
-- _.PParams.pv
d_pv_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_388 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_414
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_412
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_400
      (coe v0)
-- _.RwdAddr.net
d_net_1314 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  AgdaAny
d_net_1314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_104 (coe v0)
-- _.RwdAddr.stake
d_stake_1316 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_106 (coe v0)
-- _.Tx.body
d_body_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952
d_body_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
      (coe v0)
-- _.Tx.isValid
d_isValid_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Bool
d_isValid_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3158
      (coe v0)
-- _.Tx.txAD
d_txAD_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Maybe AgdaAny
d_txAD_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3160
      (coe v0)
-- _.Tx.txsize
d_txsize_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  Integer
d_txsize_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3156
      (coe v0)
-- _.Tx.wits
d_wits_1538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3120
d_wits_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
      (coe v0)
-- _.TxBody.collateral
d_collateral_1542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3024
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe Integer
d_curTreasury_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_curTreasury_3020
      (coe v0)
-- _.TxBody.mint
d_mint_1546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  AgdaAny
d_mint_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3000
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2994
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [AgdaAny]
d_reqSigHash_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSigHash_3026
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe AgdaAny
d_scriptIntHash_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntHash_3028
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe AgdaAny
d_txADhash_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3016
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe AgdaAny
d_txNetworkId_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3018
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3004
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Integer
d_txdonation_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdonation_3012
      (coe v0)
-- _.TxBody.txfee
d_txfee_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Integer
d_txfee_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2998
      (coe v0)
-- _.TxBody.txid
d_txid_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  AgdaAny
d_txid_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3022
      (coe v0)
-- _.TxBody.txins
d_txins_1566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
      (coe v0)
-- _.TxBody.txouts
d_txouts_1568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
      (coe v0)
-- _.TxBody.txprop
d_txprop_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862]
d_txprop_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3010
      (coe v0)
-- _.TxBody.txup
d_txup_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txup_3014
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3002
      (coe v0)
-- _.TxBody.txvote
d_txvote_1576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_844]
d_txvote_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3008
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
      (coe v0)
-- Ledger.Conway.Specification.Script.Validation._.DCert
d_DCert_1668 a0 a1 = ()
-- Ledger.Conway.Specification.Script.Validation.ScriptPurpose
d_ScriptPurpose_1966 a0 a1 = ()
data T_ScriptPurpose_1966
  = C_Cert_1968 MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028 |
    C_Rwrd_1970 MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_98 |
    C_Mint_1972 AgdaAny |
    C_Spend_1974 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1976 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Propose_1978 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_862
-- Ledger.Conway.Specification.Script.Validation.rdptr
d_rdptr_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  T_ScriptPurpose_1966 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1980 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1968 v4
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
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfDCert_1950
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_1978
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3004
                   (coe v2)))
      C_Rwrd_1970 v4
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
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfRwdAddr_1952
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_1978
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
                   (coe v2)))
      C_Mint_1972 v4
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
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfPolicyId_1956
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_1978
                   (coe v1))
                v4
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                      (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3000
                      (coe v2))))
      C_Spend_1974 v4
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
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfTxIn_1954
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_1978
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
                   (coe v2)))
      C_Vote_1976 v4
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
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfVote_1958
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_1978
                   (coe v1))
                v4
                (coe
                   MAlonzo.Code.Class.Functor.Core.du_fmap_22
                   MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                   () erased
                   (\ v5 ->
                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_856
                        (coe v5))
                   (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3008
                      (coe v2))))
      C_Propose_1978 v4
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
                MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfProposal_1960
                (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_1978
                   (coe v1))
                v4
                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3010
                   (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.indexedRdmrs
d_indexedRdmrs_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  T_ScriptPurpose_1966 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_2054 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_32
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3136
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                    (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                          (coe v0))))
                 (coe v4)
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                  coe
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v5
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3136
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
                                (coe v2)))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1980 (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v2))
         (coe v3))
-- Ledger.Conway.Specification.Script.Validation.getDatum
d_getDatum_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1966 -> Maybe AgdaAny
d_getDatum_2090 v0 ~v1 v2 v3 v4 = du_getDatum_2090 v0 v2 v3 v4
du_getDatum_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1966 -> Maybe AgdaAny
du_getDatum_2090 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v3 of
         C_Spend_1974 v5
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1470
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe v2) (coe v5)
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                               (coe v0))
                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                               (coe v0))))
                      (coe v5)
                      (let v6
                             = MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v6
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2))))))
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
                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe du_m_2102 (coe v0) (coe v1))
                                                           (coe v14)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                                                                             (coe v0))))))
                                                              (coe v14)
                                                              (let v15
                                                                     = MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                                    v15
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                       (coe
                                                                          du_m_2102 (coe v0)
                                                                          (coe v1))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v11
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> coe v4)
-- Ledger.Conway.Specification.Script.Validation._.m
d_m_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2102 v0 ~v1 v2 ~v3 ~v4 = du_m_2102 v0 v2
du_m_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2102 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.du_setToMap_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                     (coe v0))))))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
            (coe
               MAlonzo.Code.Interface.Hashable.d_hash_16
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
                              (coe v0)))))))
            (coe (\ v2 -> v2)))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3134
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
               (coe v1))))
-- Ledger.Conway.Specification.Script.Validation.TxInfo
d_TxInfo_2118 a0 a1 = ()
data T_TxInfo_2118
  = C_TxInfo'46'constructor_19957 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny] [AgdaAny] AgdaAny
-- Ledger.Conway.Specification.Script.Validation.TxInfo.realizedInputs
d_realizedInputs_2140 ::
  T_TxInfo_2118 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_2140 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txouts
d_txouts_2142 ::
  T_TxInfo_2118 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2142 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.fee
d_fee_2144 :: T_TxInfo_2118 -> AgdaAny
d_fee_2144 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.mint
d_mint_2146 :: T_TxInfo_2118 -> AgdaAny
d_mint_2146 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txcerts
d_txcerts_2148 ::
  T_TxInfo_2118 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_2148 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txwdrls
d_txwdrls_2150 ::
  T_TxInfo_2118 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2150 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txvldt
d_txvldt_2152 ::
  T_TxInfo_2118 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2152 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.vkKey
d_vkKey_2154 :: T_TxInfo_2118 -> [AgdaAny]
d_vkKey_2154 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txdats
d_txdats_2156 :: T_TxInfo_2118 -> [AgdaAny]
d_txdats_2156 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.TxInfo.txid
d_txid_2158 :: T_TxInfo_2118 -> AgdaAny
d_txid_2158 v0
  = case coe v0 of
      C_TxInfo'46'constructor_19957 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.txInfo
d_txInfo_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  T_TxInfo_2118
d_txInfo_2160 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_2160 v0 v4 v5
du_txInfo_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  T_TxInfo_2118
du_txInfo_2160 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_19957
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                  (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2996
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2998
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3000
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3004
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_3002
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSigHash_3026
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3134
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3154
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3022
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v2)))
-- Ledger.Conway.Specification.Script.Validation.credsNeeded
d_credsNeeded_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_2282 v0 ~v1 v2 v3 = du_credsNeeded_2282 v0 v2 v3
du_credsNeeded_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_2282 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 C_Spend_1974
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_156
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1228
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1226
                        (coe v0))))
               (coe v1)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2992
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3024
                     (coe v2))))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_398
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe C_Rwrd_1970 (coe v3))
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_106
                    (coe v3)))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_548
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
               (coe
                  MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3006
                     (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__680
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_576
               (MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Data.Maybe.Base.du_map_64
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe C_Cert_1968 (coe v3)) (coe v4))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1046
                       (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3004
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1470
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_398
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe C_Mint_1972 (coe v3))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                          (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2304
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3000
                        (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_398
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe C_Vote_1976 (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_856
                                (coe v3))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3008
                              (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_576
                     (MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Class.ToBool.du_if_then_else__42
                          (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_102)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_880
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
                                     (coe C_Propose_1978 (coe v3))
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                        (coe v4)))))
                          (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txprop_3010
                           (coe v2))))))))
-- Ledger.Conway.Specification.Script.Validation.valContext
d_valContext_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  T_TxInfo_2118 -> T_ScriptPurpose_1966 -> AgdaAny
d_valContext_2352 v0 ~v1 v2 v3 = du_valContext_2352 v0 v2 v3
du_valContext_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  T_TxInfo_2118 -> T_ScriptPurpose_1966 -> AgdaAny
du_valContext_2352 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_268
      (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1814
            (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.Conway.Specification.Script.Validation.txOutToDataHash
d_txOutToDataHash_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToDataHash_2358 ~v0 ~v1 v2 = du_txOutToDataHash_2358 v2
du_txOutToDataHash_2358 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToDataHash_2358 v0
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
-- Ledger.Conway.Specification.Script.Validation.txOutToP2Script
d_txOutToP2Script_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txOutToP2Script_2362 v0 ~v1 v2 v3 v4
  = du_txOutToP2Script_2362 v0 v2 v3 v4
du_txOutToP2Script_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
du_txOutToP2Script_2362 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
             (coe
                MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_54
                (coe
                   MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_156
                   (coe v4)))
             (coe
                (\ v6 ->
                   coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                     MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
                     erased
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3276
                        (coe v0) (coe v6) (coe v2) (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_418)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Script.Validation.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_2374 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (\ v5 ->
         coe
           MAlonzo.Code.Class.ToBool.du_if_then_else__42
           (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_102)
           (coe
              MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_54
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
           (coe
              MAlonzo.Code.Level.C_lift_20
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (coe
              (\ v6 ->
                 d_toScriptInput_2386
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) (coe v6)))
           (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      (coe
         du_credsNeeded_2282 (coe v0) (coe v4)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3152
            (coe v3)))
-- Ledger.Conway.Specification.Script.Validation._.toScriptInput
d_toScriptInput_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1966 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toScriptInput_2386 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3276
         (coe v0) (coe v6) (coe v3) (coe v4))
      (coe
         (\ v7 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
              erased
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_418
                 v7)
              (\ v8 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 () erased ()
                   erased (d_indexedRdmrs_2054 (coe v0) (coe v1) (coe v3) (coe v5))
                   (\ v9 ->
                      case coe v9 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                        (coe
                                           MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                           (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286)
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                           (coe
                                              du_getDatum_2090 (coe v0) (coe v3) (coe v4) (coe v5)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v10)
                                           (coe
                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                              (coe
                                                 du_valContext_2352 (coe v0)
                                                 (coe du_txInfo_2160 (coe v0) (coe v4) (coe v3))
                                                 (coe v5)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_426
                                           (coe v2)))))
                        _ -> MAlonzo.RTE.mazUnreachableError))))
-- Ledger.Conway.Specification.Script.Validation.evalP2Scripts
d_evalP2Scripts_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_2414 ~v0 v1 = du_evalP2Scripts_2414 v1
du_evalP2Scripts_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1962 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_2414 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_all_276
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_runPLCScript_1980
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
