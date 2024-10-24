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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Fees
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation
import qualified MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Set.HashMap
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
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_98 ~v0 = du_Dec'45'isScript_98
du_Dec'45'isScript_98 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_98
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BaseAddr_194
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BootstrapAddr_196
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
         (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
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
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_204
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
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
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2934
-- _.inject
d_inject_564 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
         (coe v0))
-- _.netId
d_netId_606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_606 ~v0 = du_netId_606
du_netId_606 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_606
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Address.du_netId_116
-- _.txOutHash
d_txOutHash_676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2924
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
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
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
d_body_1628 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798
d_body_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
      (coe v0)
-- _.Tx.isValid
d_isValid_1630 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Bool
d_isValid_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2914
      (coe v0)
-- _.Tx.txAD
d_txAD_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Maybe AgdaAny
d_txAD_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2916
      (coe v0)
-- _.Tx.wits
d_wits_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2880
d_wits_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2912
      (coe v0)
-- _.TxBody.collateral
d_collateral_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2874
      (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe Integer
d_curTreasury_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2868
      (coe v0)
-- _.TxBody.mint
d_mint_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  AgdaAny
d_mint_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2848
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2842
      (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [AgdaAny]
d_reqSigHash_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2876
      (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe AgdaAny
d_scriptIntHash_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2878
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe AgdaAny
d_txADhash_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2864
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe AgdaAny
d_txNetworkId_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2866
      (coe v0)
-- _.TxBody.txcerts
d_txcerts_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2852
      (coe v0)
-- _.TxBody.txdonation
d_txdonation_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txdonation_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2860
      (coe v0)
-- _.TxBody.txfee
d_txfee_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txfee_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2846
      (coe v0)
-- _.TxBody.txid
d_txid_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  AgdaAny
d_txid_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2872
      (coe v0)
-- _.TxBody.txins
d_txins_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
      (coe v0)
-- _.TxBody.txouts
d_txouts_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
      (coe v0)
-- _.TxBody.txprop
d_txprop_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2858
      (coe v0)
-- _.TxBody.txsize
d_txsize_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txsize_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2870
      (coe v0)
-- _.TxBody.txup
d_txup_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2862
      (coe v0)
-- _.TxBody.txvldt
d_txvldt_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2850
      (coe v0)
-- _.TxBody.txvote
d_txvote_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2856
      (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2854
      (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1762 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1762 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2370
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1772 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1772 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2388
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo.certDepositUtxo
d_certDepositUtxo_1848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1848 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1848 v2 v3
du_certDepositUtxo_1848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1848 v0 v1
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
d_updateCertDeposits_1862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1862 v0 ~v1 ~v2 v3 v4
  = du_updateCertDeposits_1862 v0 v3 v4
du_updateCertDeposits_1862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1862 v0 v1 v2
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
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
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
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                      (coe v0)))
                (coe du_updateCertDeposits_1862 (coe v0) (coe v4) (coe v2))
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990
                   (coe v3)))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1000
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateCertDepositsUtxo
d_updateCertDepositsUtxo_1874 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_1874 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_1874 v0 v2 v3 v4
du_updateCertDepositsUtxo_1874 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_1874 v0 v1 v2 v3
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
                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                   (coe v0)))
             (coe
                du_updateCertDepositsUtxo_1874 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1848 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateProposalDeposits
d_updateProposalDeposits_1886 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1886 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1886 v0 v2 v3 v4 v5
du_updateProposalDeposits_1886 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1886 v0 v1 v2 v3 v4
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
                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                   (coe v0)))
             (coe
                du_updateProposalDeposits_1886 (coe v0) (coe v6) (coe v2) (coe v3)
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
d_updateDeposits_1898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1898 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1898 v0 v2 v3 v4
du_updateDeposits_1898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1898 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_1874 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2852
         (coe v2))
      (coe
         du_updateProposalDeposits_1886 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2858
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2872
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
            (coe v1))
         (coe v3))
-- Ledger.Conway.Conformance.Utxo.UTxOEnv
d_UTxOEnv_1950 a0 a1 = ()
data T_UTxOEnv_1950
  = C_UTxOEnv'46'constructor_9723 AgdaAny
                                  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
                                  Integer
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.slot
d_slot_1958 :: T_UTxOEnv_1950 -> AgdaAny
d_slot_1958 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_9723 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams
d_pparams_1960 ::
  T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1960 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_9723 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.treasury
d_treasury_1962 :: T_UTxOEnv_1950 -> Integer
d_treasury_1962 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_9723 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState
d_UTxOState_1964 a0 a1 = ()
data T_UTxOState_1964
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1982 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Conformance.Utxo.UTxOState.utxo
d_utxo_1974 ::
  T_UTxOState_1964 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1974 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1982 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.fees
d_fees_1976 :: T_UTxOState_1964 -> Integer
d_fees_1976 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1982 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.deposits
d_deposits_1978 ::
  T_UTxOState_1964 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1978 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1982 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.donations
d_donations_1980 :: T_UTxOState_1964 -> Integer
d_donations_1980 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1982 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo._*↓_
d__'42''8595'__1992 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1992 ~v0 v1 v2 = du__'42''8595'__1992 v1 v2
du__'42''8595'__1992 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1992 v0 v1
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
d_isTwoPhaseScriptAddress_1998 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1998 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_1998 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_1998 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1998 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
            (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_lookupScriptHash_3020
                 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Address.du_getScriptHash_188
                    (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_isP2Script_3034
                      (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Conway.Conformance.Utxo.getDataHashes
d_getDataHashes_2010 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2010 ~v0 ~v1 v2 = du_getDataHashes_2010 v2
du_getDataHashes_2010 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2010 v0
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
d_getInputHashes_2014 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2014 v0 ~v1 v2 v3
  = du_getInputHashes_2014 v0 v2 v3
du_getInputHashes_2014 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2014 v0 v1 v2
  = coe
      du_getDataHashes_2010
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
              (coe
                 du_isTwoPhaseScriptAddress_1998 (coe v0) (coe v1) (coe v2)
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
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                        (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                     (coe v1))))))
-- Ledger.Conway.Conformance.Utxo.totExUnits
d_totExUnits_2070 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  AgdaAny
d_totExUnits_2070 v0 ~v1 v2 = du_totExUnits_2070 v0 v2
du_totExUnits_2070 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  AgdaAny
du_totExUnits_2070 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Tag_22)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2896
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2912
            (coe v1)))
-- Ledger.Conway.Conformance.Utxo._._.outs
d_outs_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2090 ~v0 ~v1 v2 = du_outs_2090 v2
du_outs_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2090 v0
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
                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2872
                 (coe v0))
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._._.balance
d_balance_2096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2096 v0 ~v1 v2 = du_balance_2096 v0 v2
du_balance_2096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2096 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BaseAddr_194
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BootstrapAddr_196
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                     (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_222
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                  (coe v0)))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                        (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2934)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2924
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Utxo._._.cbalance
d_cbalance_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2102 v0 ~v1 v2 = du_cbalance_2102 v0 v2
du_cbalance_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2102 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_204
      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
         (coe v0))
      (coe du_balance_2096 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo._._.refScriptsSize
d_refScriptsSize_2106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_refScriptsSize_2106 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
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
            MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_scriptSize_1768
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                  (coe v0))
               erased erased erased
               (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                        (coe v0))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                        (coe v0))))
               (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                        (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2958
               (coe v0) (coe v3) (coe v2))))
-- Ledger.Conway.Conformance.Utxo._._.minfee
d_minfee_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_minfee_2116 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_txscriptfee_1760
               v1
               (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
                  (coe v2))
               (coe du_totExUnits_2070 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Fees.du_scriptsCost_1728
               (coe v2)
               (coe d_refScriptsSize_2106 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v2)))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2870
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
               (coe v4))))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2124 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2124
  = C_Scripts'45'Yes_2204 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2284 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_txdonation_2162 ~v0 ~v1 ~v2 v3 = du_txdonation_2162 v3
du_txdonation_2162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
du_txdonation_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2860
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_txfee_2164 ~v0 ~v1 ~v2 v3 = du_txfee_2164 v3
du_txfee_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
du_txfee_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2846
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2168 ~v0 ~v1 ~v2 v3 = du_txins_2168 v3
du_txins_2168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2186 ~v0 v1 ~v2 ~v3 = du_pparams_2186 v1
du_pparams_2186 ::
  T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2186 v0 = coe d_pparams_1960 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  AgdaAny
d_slot_2188 ~v0 v1 ~v2 ~v3 = du_slot_2188 v1
du_slot_2188 :: T_UTxOEnv_1950 -> AgdaAny
du_slot_2188 v0 = coe d_slot_1958 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_treasury_2190 ~v0 v1 ~v2 ~v3 = du_treasury_2190 v1
du_treasury_2190 :: T_UTxOEnv_1950 -> Integer
du_treasury_2190 v0 = coe d_treasury_1962 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2194 ~v0 ~v1 v2 ~v3 = du_deposits_2194 v2
du_deposits_2194 ::
  T_UTxOState_1964 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2194 v0 = coe d_deposits_1978 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_donations_2196 ~v0 ~v1 v2 ~v3 = du_donations_2196 v2
du_donations_2196 :: T_UTxOState_1964 -> Integer
du_donations_2196 v0 = coe d_donations_1980 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_fees_2198 ~v0 ~v1 v2 ~v3 = du_fees_2198 v2
du_fees_2198 :: T_UTxOState_1964 -> Integer
du_fees_2198 v0 = coe d_fees_1976 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2200 ~v0 ~v1 v2 ~v3 = du_utxo_2200 v2
du_utxo_2200 ::
  T_UTxOState_1964 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2200 v0 = coe d_utxo_1974 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2224 ~v0 ~v1 ~v2 v3 = du_collateral_2224 v3
du_collateral_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2874
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2266 ~v0 v1 ~v2 ~v3 = du_pparams_2266 v1
du_pparams_2266 ::
  T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2266 v0 = coe d_pparams_1960 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  AgdaAny
d_slot_2268 ~v0 v1 ~v2 ~v3 = du_slot_2268 v1
du_slot_2268 :: T_UTxOEnv_1950 -> AgdaAny
du_slot_2268 v0 = coe d_slot_1958 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_treasury_2270 ~v0 v1 ~v2 ~v3 = du_treasury_2270 v1
du_treasury_2270 :: T_UTxOEnv_1950 -> Integer
du_treasury_2270 v0 = coe d_treasury_1962 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2274 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2274 ~v0 ~v1 v2 ~v3 = du_deposits_2274 v2
du_deposits_2274 ::
  T_UTxOState_1964 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2274 v0 = coe d_deposits_1978 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_donations_2276 ~v0 ~v1 v2 ~v3 = du_donations_2276 v2
du_donations_2276 :: T_UTxOState_1964 -> Integer
du_donations_2276 v0 = coe d_donations_1980 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Integer
d_fees_2278 ~v0 ~v1 v2 ~v3 = du_fees_2278 v2
du_fees_2278 :: T_UTxOState_1964 -> Integer
du_fees_2278 v0 = coe d_fees_1976 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2280 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2280 ~v0 ~v1 v2 ~v3 = du_utxo_2280 v2
du_utxo_2280 ::
  T_UTxOState_1964 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2280 v0 = coe d_utxo_1974 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2286 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2388
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2370
                  (coe v0) (coe v1) (coe d_pparams_1960 (coe v2)) (coe v4)
                  (coe d_utxo_1974 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2914
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2914
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2288 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2388
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2370
                  (coe v0) (coe v1) (coe d_pparams_1960 (coe v2)) (coe v4)
                  (coe d_utxo_1974 (coe v3))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2914
               (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2914
               (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo.inInterval
d_inInterval_2292 a0 a1 a2 a3 = ()
data T_inInterval_2292
  = C_both_2300 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2304 AgdaAny | C_upper_2308 AgdaAny | C_none_2310
-- Ledger.Conway.Conformance.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2312 v0 ~v1 = du_HasCoin'45'UTxO_2312 v0
du_HasCoin'45'UTxO_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2312 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2102 (coe v0))
-- Ledger.Conway.Conformance.Utxo.Dec-inInterval
d_Dec'45'inInterval_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2314 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2314 v0 v2 v3
du_Dec'45'inInterval_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2314 v0 v1 v2
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
                                         (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                            (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
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
                                                                                    C_both_2300
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
                                         (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
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
                                                         (coe C_lower_2304 v9))
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
                                         (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
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
                                                         (coe C_upper_2308 v9))
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
                                 (coe C_none_2310))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2416 v0 ~v1
  = du_HasCoin'45'UTxOState_2416 v0
du_HasCoin'45'UTxOState_2416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2416 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2102 (coe v0) (coe d_utxo_1974 (coe v1)))
                    (coe d_donations_1980 (coe v1)))
                 (coe d_fees_1976 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2)) (coe d_deposits_1978 (coe v1)))))
-- Ledger.Conway.Conformance.Utxo._=>ᵇ_
d__'61''62''7495'__2420 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__2420 ~v0 v1 v2 = du__'61''62''7495'__2420 v1 v2
du__'61''62''7495'__2420 :: Bool -> Bool -> Bool
du__'61''62''7495'__2420 v0 v1
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Conway.Conformance.Utxo._≤ᵇ_
d__'8804''7495'__2426 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  Integer -> Integer -> Bool
d__'8804''7495'__2426 ~v0 ~v1 v2 v3 = du__'8804''7495'__2426 v2 v3
du__'8804''7495'__2426 :: Integer -> Integer -> Bool
du__'8804''7495'__2426 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v0)
            (coe v1)))
-- Ledger.Conway.Conformance.Utxo._≥ᵇ_
d__'8805''7495'__2428 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  Integer -> Integer -> Bool
d__'8805''7495'__2428 ~v0 ~v1 v2 v3 = du__'8805''7495'__2428 v2 v3
du__'8805''7495'__2428 :: Integer -> Integer -> Bool
du__'8805''7495'__2428 v0 v1
  = coe du__'8804''7495'__2426 (coe v1) (coe v0)
-- Ledger.Conway.Conformance.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2440 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_2440 v2 v3
du_'8799''45''8709''7495'_2440 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2440 v0 v1
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
d_coinPolicies_2444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  [AgdaAny]
d_coinPolicies_2444 v0 ~v1 = du_coinPolicies_2444 v0
du_coinPolicies_2444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [AgdaAny]
du_coinPolicies_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_208
      (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Conformance.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2446 v0 ~v1 v2 = du_isAdaOnly'7495'_2446 v0 v2
du_isAdaOnly'7495'_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2446 v0 v1
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
                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                          (coe v0)))
                    (coe v2) (coe du_coinPolicies_2444 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_208
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
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
                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                          (coe v0)))
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_208
                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                          (coe v0))
                       v1)))
            (coe du_coinPolicies_2444 (coe v0))))
-- Ledger.Conway.Conformance.Utxo.feesOK
d_feesOK_2450 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2450 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__2426
         (coe d_minfee_2116 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2846
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
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
                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                                             (coe v0))))))
                              (MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                                       (coe v0))))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2896
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2912
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
                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isVKey_148
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))))
                    (coe du_collateralRange_2594 (coe v0) (coe v3) (coe v4)))
                 (coe
                    MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                    (coe
                       du_isAdaOnly'7495'_2446 (coe v0)
                       (coe du_bal_2596 (coe v0) (coe v3) (coe v4)))
                    (coe
                       MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                       (coe
                          du__'8805''7495'__2428
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_204
                                (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                                   (coe v0))
                                (coe du_bal_2596 (coe v0) (coe v3) (coe v4)))
                             (coe (100 :: Integer)))
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2846
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2874
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                                      (coe v3)))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8709'_442
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))))
         (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo._.collateralRange
d_collateralRange_2594 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2594 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2594 v0 v3 v4
du_collateralRange_2594 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2594 v0 v1 v2
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
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                  (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2924
               (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2874
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
               (coe v1))))
-- Ledger.Conway.Conformance.Utxo._.bal
d_bal_2596 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2596 v0 ~v1 ~v2 v3 v4 = du_bal_2596 v0 v3 v4
du_bal_2596 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2596 v0 v1 v2
  = coe
      du_balance_2096 (coe v0)
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
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                  (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2874
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
               (coe v1))))
-- Ledger.Conway.Conformance.Utxo.depositsChange
d_depositsChange_2602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2602 v0 ~v1 v2 v3 v4
  = du_depositsChange_2602 v0 v2 v3 v4
du_depositsChange_2602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2602 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_1898 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
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
d_depositRefunds_2618 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_depositRefunds_2618 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2618 v0 v2 v3 v4
du_depositRefunds_2618 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
du_depositRefunds_2618 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_2602 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1978 (coe v2)))
-- Ledger.Conway.Conformance.Utxo._._.newDeposits
d_newDeposits_2626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_newDeposits_2626 v0 ~v1 v2 v3 v4
  = du_newDeposits_2626 v0 v2 v3 v4
du_newDeposits_2626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
du_newDeposits_2626 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_2602 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1978 (coe v2)))
-- Ledger.Conway.Conformance.Utxo._._.consumed
d_consumed_2634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  AgdaAny
d_consumed_2634 v0 ~v1 v2 v3 v4 = du_consumed_2634 v0 v2 v3 v4
du_consumed_2634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  AgdaAny
du_consumed_2634 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                     (coe v0))))
            (coe
               du_balance_2096 (coe v0)
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
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                           (coe v0))))
                  (coe d_utxo_1974 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
                     (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2848
               (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
               (coe v0))
            (coe du_depositRefunds_2618 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
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
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2854
               (coe v3))))
-- Ledger.Conway.Conformance.Utxo._._.produced
d_produced_2642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  AgdaAny
d_produced_2642 v0 ~v1 v2 v3 v4 = du_produced_2642 v0 v2 v3 v4
du_produced_2642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  T_UTxOState_1964 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  AgdaAny
du_produced_2642 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                     (coe v0))))
            (coe du_balance_2096 (coe v0) (coe du_outs_2090 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2846
                  (coe v3))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
               (coe v0))
            (coe du_newDeposits_2626 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2860
            (coe v3)))
-- Ledger.Conway.Conformance.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  Integer
d_utxoEntrySizeWithoutVal_2650 ~v0
  = du_utxoEntrySizeWithoutVal_2650
du_utxoEntrySizeWithoutVal_2650 :: Integer
du_utxoEntrySizeWithoutVal_2650 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.utxoEntrySize
d_utxoEntrySize_2652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2652 v0 ~v1 v2 = du_utxoEntrySize_2652 v0 v2
du_utxoEntrySize_2652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2652 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_210
         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2934
            (coe v1)))
-- Ledger.Conway.Conformance.Utxo._≡?_
d__'8801''63'__2658 a0 a1 a2 a3 a4 = ()
data T__'8801''63'__2658
  = C_'8801''63''45'nothing_2664 | C_'8801''63''45'just_2668
-- Ledger.Conway.Conformance.Utxo.≟?
d_'8799''63'_2676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2676 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8799''63'_2676 v3 v4 v5
du_'8799''63'_2676 ::
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2676 v0 v1 v2
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
                                       (coe C_'8801''63''45'just_2668))))
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
                   (coe C_'8801''63''45'nothing_2664)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2698 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2698
  = C_UTXO'45'inductive_2794 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2706 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798
d_body_2706 ~v0 ~v1 v2 = du_body_2706 v2
du_body_2706 ::
  T_GeneralizeTel_72329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798
du_body_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
      (coe d_'46'generalizedField'45'tx_72321 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2714 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> Maybe Integer
d_curTreasury_2714 ~v0 ~v1 v2 = du_curTreasury_2714 v2
du_curTreasury_2714 :: T_GeneralizeTel_72329 -> Maybe Integer
du_curTreasury_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2868
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> AgdaAny
d_mint_2716 ~v0 ~v1 v2 = du_mint_2716 v2
du_mint_2716 :: T_GeneralizeTel_72329 -> AgdaAny
du_mint_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2848
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2718 ~v0 ~v1 v2 = du_refInputs_2718 v2
du_refInputs_2718 ::
  T_GeneralizeTel_72329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2842
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> Maybe AgdaAny
d_txNetworkId_2726 ~v0 ~v1 v2 = du_txNetworkId_2726 v2
du_txNetworkId_2726 :: T_GeneralizeTel_72329 -> Maybe AgdaAny
du_txNetworkId_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2866
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2736 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2736 ~v0 ~v1 v2 = du_txins_2736 v2
du_txins_2736 ::
  T_GeneralizeTel_72329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2738 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2738 ~v0 ~v1 v2 = du_txouts_2738 v2
du_txouts_2738 ::
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2742 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> Integer
d_txsize_2742 ~v0 ~v1 v2 = du_txsize_2742 v2
du_txsize_2742 :: T_GeneralizeTel_72329 -> Integer
du_txsize_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2870
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2746 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2746 ~v0 ~v1 v2 = du_txvldt_2746 v2
du_txvldt_2746 ::
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2750 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2750 ~v0 ~v1 v2 = du_txwdrls_2750 v2
du_txwdrls_2750 ::
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2854
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
         (coe d_'46'generalizedField'45'tx_72321 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2754 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_2754 ~v0 ~v1 v2 = du_pparams_2754 v2
du_pparams_2754 ::
  T_GeneralizeTel_72329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
du_pparams_2754 v0
  = coe
      d_pparams_1960 (coe d_'46'generalizedField'45'Γ_72323 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2756 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> AgdaAny
d_slot_2756 ~v0 ~v1 v2 = du_slot_2756 v2
du_slot_2756 :: T_GeneralizeTel_72329 -> AgdaAny
du_slot_2756 v0
  = coe d_slot_1958 (coe d_'46'generalizedField'45'Γ_72323 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2758 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> Integer
d_treasury_2758 ~v0 ~v1 v2 = du_treasury_2758 v2
du_treasury_2758 :: T_GeneralizeTel_72329 -> Integer
du_treasury_2758 v0
  = coe
      d_treasury_1962 (coe d_'46'generalizedField'45'Γ_72323 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2762 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2762 ~v0 ~v1 v2 = du_deposits_2762 v2
du_deposits_2762 ::
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2762 v0
  = coe
      d_deposits_1978 (coe d_'46'generalizedField'45's_72325 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2764 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> Integer
d_donations_2764 ~v0 ~v1 v2 = du_donations_2764 v2
du_donations_2764 :: T_GeneralizeTel_72329 -> Integer
du_donations_2764 v0
  = coe
      d_donations_1980 (coe d_'46'generalizedField'45's_72325 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2766 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> Integer
d_fees_2766 ~v0 ~v1 v2 = du_fees_2766 v2
du_fees_2766 :: T_GeneralizeTel_72329 -> Integer
du_fees_2766 v0
  = coe d_fees_1976 (coe d_'46'generalizedField'45's_72325 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2768 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2768 ~v0 ~v1 v2 = du_utxo_2768 v2
du_utxo_2768 ::
  T_GeneralizeTel_72329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2768 v0
  = coe d_utxo_1974 (coe d_'46'generalizedField'45's_72325 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1964 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2838 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
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
                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_1974 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2842
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                        (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
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
                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2842
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
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
                     du_Dec'45'inInterval_2314 (coe v0) (coe d_slot_1958 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2850
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           d_feesOK_2450 (coe v0) (coe v1) (coe d_pparams_1960 (coe v3))
                           (coe v2) (coe d_utxo_1974 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_222
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                                 (coe v0)))
                           (coe
                              du_consumed_2634 (coe v0) (coe d_pparams_1960 (coe v3)) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                                 (coe v2)))
                           (coe
                              du_produced_2642 (coe v0) (coe d_pparams_1960 (coe v3)) (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_204
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                                    (coe v0))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2848
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                                       (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2870
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                                       (coe v2)))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
                                    (coe d_pparams_1960 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2106
                                       (coe v0) (coe v1) (coe d_utxo_1974 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
                                       (coe d_pparams_1960 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_224
                                               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2652 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
                                                        (coe d_pparams_1960 (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2934
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
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2924
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
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
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_serSize_1762
                                                     v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2934
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
                                                     (coe d_pparams_1960 (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2924
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
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
                                                             (MAlonzo.Code.Ledger.Conway.Conformance.Address.d_attrsSize_78
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2924
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_netId_116
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2412
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
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2924
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
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
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2412
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
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2854
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      du_'8799''63'_2676
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2866
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_networkId_2412
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                                            (coe v0))))
                                                   (coe
                                                      du_'8799''63'_2676
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2868
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
                                                            (coe v2)))
                                                      (coe d_treasury_1962 (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_72321 ::
  T_GeneralizeTel_72329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900
d_'46'generalizedField'45'tx_72321 v0
  = case coe v0 of
      C_mkGeneralizeTel_72331 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_72323 ::
  T_GeneralizeTel_72329 -> T_UTxOEnv_1950
d_'46'generalizedField'45'Γ_72323 v0
  = case coe v0 of
      C_mkGeneralizeTel_72331 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_72325 ::
  T_GeneralizeTel_72329 -> T_UTxOState_1964
d_'46'generalizedField'45's_72325 v0
  = case coe v0 of
      C_mkGeneralizeTel_72331 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_72327 ::
  T_GeneralizeTel_72329 -> T_UTxOState_1964
d_'46'generalizedField'45's''_72327 v0
  = case coe v0 of
      C_mkGeneralizeTel_72331 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_72329 a0 a1 = ()
data T_GeneralizeTel_72329
  = C_mkGeneralizeTel_72331 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900
                            T_UTxOEnv_1950 T_UTxOState_1964 T_UTxOState_1964
