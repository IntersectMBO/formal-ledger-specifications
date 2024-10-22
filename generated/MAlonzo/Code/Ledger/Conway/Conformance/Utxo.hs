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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Fees
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Addr
d_Addr_42 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Addr_42 = erased
-- _.DCert
d_DCert_76 a0 = ()
-- _.THash
d_THash_90 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_90 = erased
-- _.Dec-isScript
d_Dec'45'isScript_98 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_98 ~v0 = du_Dec'45'isScript_98
du_Dec'45'isScript_98 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_98
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_112 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_114 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
         (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_148 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
-- _.DepositPurpose
d_DepositPurpose_188 a0 = ()
-- _.Deposits
d_Deposits_190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Deposits_190 = erased
-- _.ExUnits
d_ExUnits_200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_200 = erased
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_268 = erased
-- _.PParams
d_PParams_302 a0 = ()
-- _.ScriptHash
d_ScriptHash_366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_366 = erased
-- _.Slot
d_Slot_414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_414 = erased
-- _.Tx
d_Tx_444 a0 = ()
-- _.TxBody
d_TxBody_446 a0 = ()
-- _.TxOut
d_TxOut_452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_452 = erased
-- _.TxOutʰ
d_TxOut'688'_454 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut'688'_454 = erased
-- _.UTxO
d_UTxO_458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_458 = erased
-- _.Value
d_Value_476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_476 = erased
-- _.coin
d_coin_510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_510 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
         (coe v0))
-- _.getValueʰ
d_getValue'688'_554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_554 ~v0 = du_getValue'688'_554
du_getValue'688'_554 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_554
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_3202
-- _.inject
d_inject_564 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_564 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
         (coe v0))
-- _.netId
d_netId_606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_606 ~v0 = du_netId_606
du_netId_606 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_606 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_3192
      (coe v0)
-- _.GovProposal.action
d_action_930 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- _.GovProposal.anchor
d_anchor_932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- _.GovProposal.deposit
d_deposit_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- _.GovProposal.policy
d_policy_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe AgdaAny
d_policy_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- _.GovProposal.prevAction
d_prevAction_938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_982 a0 = ()
-- _.PParams.Emax
d_Emax_1140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_Emax_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- _.PParams.a
d_a_1142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- _.PParams.a0
d_a0_1144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- _.PParams.b
d_b_1146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_1148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_1150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_1154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_costmdls_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_drepActivity_1158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_1162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxBlockExUnits_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_1180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_maxTxExUnits_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- _.PParams.nopt
d_nopt_1192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- _.PParams.prices
d_prices_1198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny
d_prices_1198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- _.PParams.pv
d_pv_1200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- _.Tx.body
d_body_1776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066
d_body_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
      (coe v0)
-- _.Tx.isValid
d_isValid_1778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Bool
d_isValid_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_3182
      (coe v0)
-- _.Tx.txAD
d_txAD_1780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Maybe AgdaAny
d_txAD_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_3184
      (coe v0)
-- _.Tx.wits
d_wits_1782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_3148
d_wits_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_3180
      (coe v0)
-- _.TxBody.collateral
d_collateral_1786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_3142
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe Integer
d_curTreasury_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_3136
      (coe v0)
-- _.TxBody.mint
d_mint_1790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  AgdaAny
d_mint_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_3116
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_3110
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [AgdaAny]
d_reqSigHash_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_3144
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe AgdaAny
d_scriptIntHash_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_3146
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe AgdaAny
d_txADhash_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_3132
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe AgdaAny
d_txNetworkId_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_3134
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_3120
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_txdonation_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_3128
      (coe v0)
-- _.TxBody.txfee
d_txfee_1806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_txfee_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_3114
      (coe v0)
-- _.TxBody.txid
d_txid_1808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  AgdaAny
d_txid_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_3140
      (coe v0)
-- _.TxBody.txins
d_txins_1810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
      (coe v0)
-- _.TxBody.txouts
d_txouts_1812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_3112
      (coe v0)
-- _.TxBody.txprop
d_txprop_1814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_3126
      (coe v0)
-- _.TxBody.txsize
d_txsize_1816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_txsize_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_3138
      (coe v0)
-- _.TxBody.txup
d_txup_1818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_3130
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_3118
      (coe v0)
-- _.TxBody.txvote
d_txvote_1822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_3124
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_3122
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1896 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2504
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1906 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1906 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2522
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.certDepositUtxo
d_certDepositUtxo_1982 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1982 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1982 v2 v3
du_certDepositUtxo_1982 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1982 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_delegate_874 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CredentialDeposit_842
                      (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regpool_878 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_PoolDeposit_844
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
                      (coe v1)))
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_regdrep_882 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DRepDeposit_846
                      (coe v3))
                   (coe v4))
         _ -> coe v2)
-- Ledger.Conway.Conformance.Utxo.updateCertDeposits
d_updateCertDeposits_1996 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1996 v0 ~v1 ~v2 v3 v4
  = du_updateCertDeposits_1996 v0 v3 v4
du_updateCertDeposits_1996 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1996 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                erased
                (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
                      (coe v0))))
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                (coe
                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
                      (coe v0)))
                (coe du_updateCertDeposits_1996 (coe v0) (coe v4) (coe v2))
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                   (coe v3)))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1000
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateCertDepositsUtxo
d_updateCertDepositsUtxo_2008 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_2008 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_2008 v0 v2 v3 v4
du_updateCertDepositsUtxo_2008 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_2008 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
                   (coe v0)))
             (coe
                du_updateCertDepositsUtxo_2008 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1982 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateProposalDeposits
d_updateProposalDeposits_2020 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2020 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2020 v0 v2 v3 v4 v5
du_updateProposalDeposits_2020 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2020 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
                   (coe v0)))
             (coe
                du_updateProposalDeposits_2020 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateDeposits
d_updateDeposits_2032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2032 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2032 v0 v2 v3 v4
du_updateDeposits_2032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2032 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_2008 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_3120
         (coe v2))
      (coe
         du_updateProposalDeposits_2020 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_3126
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_3140
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
            (coe v1))
         (coe v3))
-- Ledger.Conway.Conformance.Utxo.UTxOEnv
d_UTxOEnv_2084 a0 a1 = ()
data T_UTxOEnv_2084
  = C_UTxOEnv'46'constructor_9945 AgdaAny
                                  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                                  Integer
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.slot
d_slot_2092 :: T_UTxOEnv_2084 -> AgdaAny
d_slot_2092 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_9945 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams
d_pparams_2094 ::
  T_UTxOEnv_2084 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2094 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_9945 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.treasury
d_treasury_2096 :: T_UTxOEnv_2084 -> Integer
d_treasury_2096 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_9945 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState
d_UTxOState_2098 a0 a1 = ()
data T_UTxOState_2098
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2116 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Conformance.Utxo.UTxOState.utxo
d_utxo_2108 ::
  T_UTxOState_2098 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2108 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2116 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.fees
d_fees_2110 :: T_UTxOState_2098 -> Integer
d_fees_2110 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2116 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.deposits
d_deposits_2112 ::
  T_UTxOState_2098 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2112 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2116 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.donations
d_donations_2114 :: T_UTxOState_2098 -> Integer
d_donations_2114 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2116 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo._*↓_
d__'42''8595'__2126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__2126 ~v0 v1 v2 = du__'42''8595'__2126 v1 v2
du__'42''8595'__2126 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__2126 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Conway.Conformance.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_2132 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_2132 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_2132 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
         (coe MAlonzo.Code.Ledger.Address.du_payCred_108 (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_lookupScriptHash_3288
                 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_184 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_isP2Script_3302
                      (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Conway.Conformance.Utxo.getDataHashes
d_getDataHashes_2144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2144 ~v0 ~v1 v2 = du_getDataHashes_2144 v2
du_getDataHashes_2144 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2144 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_576
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v1 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
         v0)
-- Ledger.Conway.Conformance.Utxo.getInputHashes
d_getInputHashes_2148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2148 v0 ~v1 v2 v3
  = du_getInputHashes_2148 v0 v2 v3
du_getInputHashes_2148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2148 v0 v1 v2
  = coe
      du_getDataHashes_2144
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
              (coe
                 du_isTwoPhaseScriptAddress_2132 (coe v0) (coe v1) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Class.IsSet.du_range_550
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                     (coe v1))))))
-- Ledger.Conway.Conformance.Utxo.totExUnits
d_totExUnits_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  AgdaAny
d_totExUnits_2204 v0 ~v1 v2 = du_totExUnits_2204 v0 v2
du_totExUnits_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  AgdaAny
du_totExUnits_2204 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Tag_22)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_190
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_3164
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_3180
            (coe v1)))
-- Ledger.Conway.Conformance.Utxo._._.outs
d_outs_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2224 ~v0 ~v1 v2 = du_outs_2224 v2
du_outs_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2224 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_3140
                 (coe v0))
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_3112
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._._.balance
d_balance_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2230 v0 ~v1 v2 = du_balance_2230 v0 v2
du_balance_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2230 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                     (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                  (coe v0)))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                        (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_3202)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_3192
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Utxo._._.cbalance
d_cbalance_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2236 v0 ~v1 v2 = du_cbalance_2236 v0 v2
du_cbalance_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2236 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
         (coe v0))
      (coe du_balance_2230 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo._._.refScriptsSize
d_refScriptsSize_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_refScriptsSize_2240 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v4 -> v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_scriptSize_1902
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                  (coe v0))
               erased erased erased
               (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                        (coe v0))))
               (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                        (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_3226
               (coe v0) (coe v3) (coe v2))))
-- Ledger.Conway.Conformance.Utxo._._.minfee
d_minfee_2250 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_minfee_2250 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_txscriptfee_1894
               v1
               (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
                  (coe v2))
               (coe du_totExUnits_2204 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Fees.du_scriptsCost_1862
               (coe v2)
               (coe d_refScriptsSize_2240 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v2)))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_3138
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
               (coe v4))))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2258 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2258
  = C_Scripts'45'Yes_2338 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2418 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_txdonation_2296 ~v0 ~v1 ~v2 v3 = du_txdonation_2296 v3
du_txdonation_2296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
du_txdonation_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_3128
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_txfee_2298 ~v0 ~v1 ~v2 v3 = du_txfee_2298 v3
du_txfee_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
du_txfee_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_3114
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2302 ~v0 ~v1 ~v2 v3 = du_txins_2302 v3
du_txins_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2320 ~v0 v1 ~v2 ~v3 = du_pparams_2320 v1
du_pparams_2320 ::
  T_UTxOEnv_2084 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2320 v0 = coe d_pparams_2094 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  AgdaAny
d_slot_2322 ~v0 v1 ~v2 ~v3 = du_slot_2322 v1
du_slot_2322 :: T_UTxOEnv_2084 -> AgdaAny
du_slot_2322 v0 = coe d_slot_2092 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_treasury_2324 ~v0 v1 ~v2 ~v3 = du_treasury_2324 v1
du_treasury_2324 :: T_UTxOEnv_2084 -> Integer
du_treasury_2324 v0 = coe d_treasury_2096 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2328 ~v0 ~v1 v2 ~v3 = du_deposits_2328 v2
du_deposits_2328 ::
  T_UTxOState_2098 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2328 v0 = coe d_deposits_2112 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_donations_2330 ~v0 ~v1 v2 ~v3 = du_donations_2330 v2
du_donations_2330 :: T_UTxOState_2098 -> Integer
du_donations_2330 v0 = coe d_donations_2114 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2332 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_fees_2332 ~v0 ~v1 v2 ~v3 = du_fees_2332 v2
du_fees_2332 :: T_UTxOState_2098 -> Integer
du_fees_2332 v0 = coe d_fees_2110 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2334 ~v0 ~v1 v2 ~v3 = du_utxo_2334 v2
du_utxo_2334 ::
  T_UTxOState_2098 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2334 v0 = coe d_utxo_2108 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2358 ~v0 ~v1 ~v2 v3 = du_collateral_2358 v3
du_collateral_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_3142
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2400 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2400 ~v0 v1 ~v2 ~v3 = du_pparams_2400 v1
du_pparams_2400 ::
  T_UTxOEnv_2084 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2400 v0 = coe d_pparams_2094 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  AgdaAny
d_slot_2402 ~v0 v1 ~v2 ~v3 = du_slot_2402 v1
du_slot_2402 :: T_UTxOEnv_2084 -> AgdaAny
du_slot_2402 v0 = coe d_slot_2092 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_treasury_2404 ~v0 v1 ~v2 ~v3 = du_treasury_2404 v1
du_treasury_2404 :: T_UTxOEnv_2084 -> Integer
du_treasury_2404 v0 = coe d_treasury_2096 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2408 ~v0 ~v1 v2 ~v3 = du_deposits_2408 v2
du_deposits_2408 ::
  T_UTxOState_2098 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2408 v0 = coe d_deposits_2112 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_donations_2410 ~v0 ~v1 v2 ~v3 = du_donations_2410 v2
du_donations_2410 :: T_UTxOState_2098 -> Integer
du_donations_2410 v0 = coe d_donations_2114 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2412 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Integer
d_fees_2412 ~v0 ~v1 v2 ~v3 = du_fees_2412 v2
du_fees_2412 :: T_UTxOState_2098 -> Integer
du_fees_2412 v0 = coe d_fees_2110 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2414 ~v0 ~v1 v2 ~v3 = du_utxo_2414 v2
du_utxo_2414 ::
  T_UTxOState_2098 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2414 v0 = coe d_utxo_2108 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2420 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2420 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2522
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2504
                  (coe v0) (coe v1) (coe d_pparams_2094 (coe v2)) (coe v4)
                  (coe d_utxo_2108 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_3182
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_3182
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2422 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2422 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2522
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2504
                  (coe v0) (coe v1) (coe d_pparams_2094 (coe v2)) (coe v4)
                  (coe d_utxo_2108 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_3182
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_3182
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo.inInterval
d_inInterval_2426 a0 a1 a2 a3 = ()
data T_inInterval_2426
  = C_both_2434 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2438 AgdaAny | C_upper_2442 AgdaAny | C_none_2444
-- Ledger.Conway.Conformance.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2446 v0 ~v1 = du_HasCoin'45'UTxO_2446 v0
du_HasCoin'45'UTxO_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2446 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2236 (coe v0))
-- Ledger.Conway.Conformance.Utxo.Dec-inInterval
d_Dec'45'inInterval_2448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2448 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2448 v0 v2 v3
du_Dec'45'inInterval_2448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2448 v0 v1 v2
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
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
                                                                                    C_both_2434
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
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
                                                         (coe C_lower_2438 v9))
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
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
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
                                                         (coe C_upper_2442 v9))
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
                                 (coe C_none_2444))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2550 v0 ~v1
  = du_HasCoin'45'UTxOState_2550 v0
du_HasCoin'45'UTxOState_2550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2550 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2236 (coe v0) (coe d_utxo_2108 (coe v1)))
                    (coe d_donations_2114 (coe v1)))
                 (coe d_fees_2110 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2)) (coe d_deposits_2112 (coe v1)))))
-- Ledger.Conway.Conformance.Utxo._=>ᵇ_
d__'61''62''7495'__2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__2554 ~v0 v1 v2 = du__'61''62''7495'__2554 v1 v2
du__'61''62''7495'__2554 :: Bool -> Bool -> Bool
du__'61''62''7495'__2554 v0 v1
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Conway.Conformance.Utxo._≤ᵇ_
d__'8804''7495'__2560 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  Integer -> Integer -> Bool
d__'8804''7495'__2560 ~v0 ~v1 v2 v3 = du__'8804''7495'__2560 v2 v3
du__'8804''7495'__2560 :: Integer -> Integer -> Bool
du__'8804''7495'__2560 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v0)
            (coe v1)))
-- Ledger.Conway.Conformance.Utxo._≥ᵇ_
d__'8805''7495'__2562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  Integer -> Integer -> Bool
d__'8805''7495'__2562 ~v0 ~v1 v2 v3 = du__'8805''7495'__2562 v2 v3
du__'8805''7495'__2562 :: Integer -> Integer -> Bool
du__'8805''7495'__2562 v0 v1
  = coe du__'8804''7495'__2560 (coe v1) (coe v0)
-- Ledger.Conway.Conformance.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_2574 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2574 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_2574 v2 v3
du_'8799''45''8709''7495'_2574 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2574 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
               (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_442
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
-- Ledger.Conway.Conformance.Utxo.coinPolicies
d_coinPolicies_2578 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  [AgdaAny]
d_coinPolicies_2578 v0 ~v1 = du_coinPolicies_2578 v0
du_coinPolicies_2578 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [AgdaAny]
du_coinPolicies_2578 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Conformance.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_2580 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2580 v0 ~v1 v2 = du_isAdaOnly'7495'_2580 v0 v2
du_isAdaOnly'7495'_2580 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2580 v0 v1
  = coe
      MAlonzo.Code.Class.ToBool.du_toBool_64
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                          (coe v0)))
                    (coe v2) (coe du_coinPolicies_2578 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                  (coe v0))
               v1))
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                          (coe v0)))
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                          (coe v0))
                       v1)))
            (coe du_coinPolicies_2578 (coe v0))))
-- Ledger.Conway.Conformance.Utxo.feesOK
d_feesOK_2584 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2584 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__2560
         (coe d_minfee_2250 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_3114
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
               (coe v3))))
      (coe
         MAlonzo.Code.Class.ToBool.du_if_then_else__46
         (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94)
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Tag_22
                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                                             (coe v0))))))
                              (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                                       (coe v0))))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_3164
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_3180
                           (coe v3))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
         (coe
            MAlonzo.Code.Level.C_lift_20
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         (coe
            (\ v5 ->
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                 (coe
                    MAlonzo.Code.Axiom.Set.du_all'7495'_1648
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                            (coe
                               MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                               (coe
                                  MAlonzo.Code.Ledger.Address.du_payCred_108
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))))
                    (coe du_collateralRange_2728 (coe v0) (coe v3) (coe v4)))
                 (coe
                    MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                    (coe
                       du_isAdaOnly'7495'_2580 (coe v0)
                       (coe du_bal_2730 (coe v0) (coe v3) (coe v4)))
                    (coe
                       MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                       (coe
                          du__'8805''7495'__2562
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                                   (coe v0))
                                (coe du_bal_2730 (coe v0) (coe v3) (coe v4)))
                             (coe (100 :: Integer)))
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_3114
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                   (coe v3)))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
                                (coe v2))))
                       (coe
                          MAlonzo.Code.Data.Bool.Base.d_not_22
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                      (coe
                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_3142
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                      (coe v3)))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8709'_442
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))))
         (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo._.collateralRange
d_collateralRange_2728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2728 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2728 v0 v3 v4
du_collateralRange_2728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2728 v0 v1 v2
  = coe
      MAlonzo.Code.Class.IsSet.du_range_550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                  (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_3192
               (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_3142
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
               (coe v1))))
-- Ledger.Conway.Conformance.Utxo._.bal
d_bal_2730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2730 v0 ~v1 ~v2 v3 v4 = du_bal_2730 v0 v3 v4
du_bal_2730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2730 v0 v1 v2
  = coe
      du_balance_2230 (coe v0)
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                  (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_3142
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
               (coe v1))))
-- Ledger.Conway.Conformance.Utxo.depositsChange
d_depositsChange_2736 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2736 v0 ~v1 v2 v3 v4
  = du_depositsChange_2736 v0 v2 v3 v4
du_depositsChange_2736 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2736 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2032 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Conway.Conformance.Utxo._._.depositRefunds
d_depositRefunds_2752 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_depositRefunds_2752 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2752 v0 v2 v3 v4
du_depositRefunds_2752 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
du_depositRefunds_2752 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_2736 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2112 (coe v2)))
-- Ledger.Conway.Conformance.Utxo._._.newDeposits
d_newDeposits_2760 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_newDeposits_2760 v0 ~v1 v2 v3 v4
  = du_newDeposits_2760 v0 v2 v3 v4
du_newDeposits_2760 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
du_newDeposits_2760 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_2736 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2112 (coe v2)))
-- Ledger.Conway.Conformance.Utxo._._.consumed
d_consumed_2768 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  AgdaAny
d_consumed_2768 v0 ~v1 v2 v3 v4 = du_consumed_2768 v0 v2 v3 v4
du_consumed_2768 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  AgdaAny
du_consumed_2768 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                     (coe v0))))
            (coe
               du_balance_2230 (coe v0)
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
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                           (coe v0))))
                  (coe d_utxo_2108 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
                     (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_3116
               (coe v3)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
               (coe v0))
            (coe du_depositRefunds_2752 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                     (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
            (coe (\ v4 -> v4))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_3122
               (coe v3))))
-- Ledger.Conway.Conformance.Utxo._._.produced
d_produced_2776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  AgdaAny
d_produced_2776 v0 ~v1 v2 v3 v4 = du_produced_2776 v0 v2 v3 v4
du_produced_2776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_2098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  AgdaAny
du_produced_2776 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                     (coe v0))))
            (coe du_balance_2230 (coe v0) (coe du_outs_2224 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_3114
                  (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
               (coe v0))
            (coe du_newDeposits_2760 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_3128
            (coe v3)))
-- Ledger.Conway.Conformance.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  Integer
d_utxoEntrySizeWithoutVal_2784 ~v0
  = du_utxoEntrySizeWithoutVal_2784
du_utxoEntrySizeWithoutVal_2784 :: Integer
du_utxoEntrySizeWithoutVal_2784 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.utxoEntrySize
d_utxoEntrySize_2786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2786 v0 ~v1 v2 = du_utxoEntrySize_2786 v0 v2
du_utxoEntrySize_2786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2786 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_3202
            (coe v1)))
-- Ledger.Conway.Conformance.Utxo._≡?_
d__'8801''63'__2792 a0 a1 a2 a3 a4 = ()
data T__'8801''63'__2792
  = C_'8801''63''45'nothing_2798 | C_'8801''63''45'just_2802
-- Ledger.Conway.Conformance.Utxo.≟?
d_'8799''63'_2810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2810 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8799''63'_2810 v3 v4 v5
du_'8799''63'_2810 ::
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2810 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> let v4
                 = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v2 v3 v1 in
           coe
             (case coe v4 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                  -> if coe v5
                       then coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v5)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe C_'8801''63''45'just_2802))))
                       else coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v5)
                                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_'8801''63''45'nothing_2798)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2832 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2832
  = C_UTXO'45'inductive_2928 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066
d_body_2840 ~v0 ~v1 v2 = du_body_2840 v2
du_body_2840 ::
  T_GeneralizeTel_72551 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066
du_body_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
      (coe d_'46'generalizedField'45'tx_72543 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> Maybe Integer
d_curTreasury_2848 ~v0 ~v1 v2 = du_curTreasury_2848 v2
du_curTreasury_2848 :: T_GeneralizeTel_72551 -> Maybe Integer
du_curTreasury_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_3136
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> AgdaAny
d_mint_2850 ~v0 ~v1 v2 = du_mint_2850 v2
du_mint_2850 :: T_GeneralizeTel_72551 -> AgdaAny
du_mint_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_3116
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2852 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2852 ~v0 ~v1 v2 = du_refInputs_2852 v2
du_refInputs_2852 ::
  T_GeneralizeTel_72551 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_3110
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2860 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> Maybe AgdaAny
d_txNetworkId_2860 ~v0 ~v1 v2 = du_txNetworkId_2860 v2
du_txNetworkId_2860 :: T_GeneralizeTel_72551 -> Maybe AgdaAny
du_txNetworkId_2860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_3134
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2870 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2870 ~v0 ~v1 v2 = du_txins_2870 v2
du_txins_2870 ::
  T_GeneralizeTel_72551 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2872 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2872 ~v0 ~v1 v2 = du_txouts_2872 v2
du_txouts_2872 ::
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_3112
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> Integer
d_txsize_2876 ~v0 ~v1 v2 = du_txsize_2876 v2
du_txsize_2876 :: T_GeneralizeTel_72551 -> Integer
du_txsize_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_3138
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2880 ~v0 ~v1 v2 = du_txvldt_2880 v2
du_txvldt_2880 ::
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_3118
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2884 ~v0 ~v1 v2 = du_txwdrls_2884 v2
du_txwdrls_2884 ::
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_3122
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
         (coe d_'46'generalizedField'45'tx_72543 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2888 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2888 ~v0 ~v1 v2 = du_pparams_2888 v2
du_pparams_2888 ::
  T_GeneralizeTel_72551 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2888 v0
  = coe
      d_pparams_2094 (coe d_'46'generalizedField'45'Γ_72545 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> AgdaAny
d_slot_2890 ~v0 ~v1 v2 = du_slot_2890 v2
du_slot_2890 :: T_GeneralizeTel_72551 -> AgdaAny
du_slot_2890 v0
  = coe d_slot_2092 (coe d_'46'generalizedField'45'Γ_72545 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> Integer
d_treasury_2892 ~v0 ~v1 v2 = du_treasury_2892 v2
du_treasury_2892 :: T_GeneralizeTel_72551 -> Integer
du_treasury_2892 v0
  = coe
      d_treasury_2096 (coe d_'46'generalizedField'45'Γ_72545 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2896 ~v0 ~v1 v2 = du_deposits_2896 v2
du_deposits_2896 ::
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2896 v0
  = coe
      d_deposits_2112 (coe d_'46'generalizedField'45's_72547 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> Integer
d_donations_2898 ~v0 ~v1 v2 = du_donations_2898 v2
du_donations_2898 :: T_GeneralizeTel_72551 -> Integer
du_donations_2898 v0
  = coe
      d_donations_2114 (coe d_'46'generalizedField'45's_72547 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> Integer
d_fees_2900 ~v0 ~v1 v2 = du_fees_2900 v2
du_fees_2900 :: T_GeneralizeTel_72551 -> Integer
du_fees_2900 v0
  = coe d_fees_2110 (coe d_'46'generalizedField'45's_72547 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2902 ~v0 ~v1 v2 = du_utxo_2902 v2
du_utxo_2902 ::
  T_GeneralizeTel_72551 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2902 v0
  = coe d_utxo_2108 (coe d_'46'generalizedField'45's_72547 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  T_UTxOEnv_2084 ->
  T_UTxOState_2098 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2972 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_442
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_2108 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_3110
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__704
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_3110
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2448 (coe v0) (coe d_slot_2092 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_3118
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           d_feesOK_2584 (coe v0) (coe v1) (coe d_pparams_2094 (coe v3))
                           (coe v2) (coe d_utxo_2108 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                                 (coe v0)))
                           (coe
                              du_consumed_2768 (coe v0) (coe d_pparams_2094 (coe v3)) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                 (coe v2)))
                           (coe
                              du_produced_2776 (coe v0) (coe d_pparams_2094 (coe v3)) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_3116
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                       (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_3138
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                       (coe v2)))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
                                    (coe d_pparams_2094 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2240
                                       (coe v0) (coe v1) (coe d_utxo_2108 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
                                       (coe d_pparams_2094 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
                                               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2786 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
                                                        (coe d_pparams_2094 (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_3202
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_3192
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_3112
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_serSize_1896
                                                     v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_3202
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
                                                     (coe d_pparams_2094 (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_3192
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_3112
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                     (coe
                                                        (\ v6 ->
                                                           MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                     (coe
                                                        (\ v6 ->
                                                           coe
                                                             MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                             (MAlonzo.Code.Ledger.Address.d_attrsSize_74
                                                                (coe v6))
                                                             (64 :: Integer)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v5))))
                                             (coe
                                                MAlonzo.Code.Class.IsSet.du_range_550
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_3192
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_3112
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2680
                                                           (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_550
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_3192
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_3112
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2680
                                                              (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_3122
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      du_'8799''63'_2810
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_3134
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2680
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
                                                            (coe v0))))
                                                   (coe
                                                      du_'8799''63'_2810
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_3136
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
                                                            (coe v2)))
                                                      (coe d_treasury_2096 (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_72543 ::
  T_GeneralizeTel_72551 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168
d_'46'generalizedField'45'tx_72543 v0
  = case coe v0 of
      C_mkGeneralizeTel_72553 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_72545 ::
  T_GeneralizeTel_72551 -> T_UTxOEnv_2084
d_'46'generalizedField'45'Γ_72545 v0
  = case coe v0 of
      C_mkGeneralizeTel_72553 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_72547 ::
  T_GeneralizeTel_72551 -> T_UTxOState_2098
d_'46'generalizedField'45's_72547 v0
  = case coe v0 of
      C_mkGeneralizeTel_72553 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_72549 ::
  T_GeneralizeTel_72551 -> T_UTxOState_2098
d_'46'generalizedField'45's''_72549 v0
  = case coe v0 of
      C_mkGeneralizeTel_72553 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_72551 a0 a1 = ()
data T_GeneralizeTel_72551
  = C_mkGeneralizeTel_72553 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168
                            T_UTxOEnv_2084 T_UTxOState_2098 T_UTxOState_2098
