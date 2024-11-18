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
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Fees
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Addr
d_Addr_30 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Addr_30 = erased
-- _.THash
d_THash_54 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_54 = erased
-- _.Dec-isScript
d_Dec'45'isScript_62 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_62 ~v0 = du_Dec'45'isScript_62
du_Dec'45'isScript_62 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_62
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_186
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_76 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_76 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_220
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_78 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_224
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
-- _.DecEq-EnterpriseAddr
d_DecEq'45'EnterpriseAddr_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EnterpriseAddr_86 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'EnterpriseAddr_222
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_110 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_226
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
-- _.ExUnits
d_ExUnits_158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_158 = erased
-- _.GovProposal
d_GovProposal_168 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_210 = erased
-- _.NetworkId
d_NetworkId_218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_218 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0))
-- _.PParams
d_PParams_238 a0 = ()
-- _.ScriptHash
d_ScriptHash_296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_296 = erased
-- _.Slot
d_Slot_344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_344 = erased
-- _.Tx
d_Tx_374 a0 = ()
-- _.TxBody
d_TxBody_376 a0 = ()
-- _.TxOut
d_TxOut_382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_382 = erased
-- _.TxOutʰ
d_TxOut'688'_384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_384 = erased
-- _.UTxO
d_UTxO_388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_388 = erased
-- _.Value
d_Value_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_408 = erased
-- _.coin
d_coin_438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_438 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
-- _.getValueʰ
d_getValue'688'_474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_474 ~v0 = du_getValue'688'_474
du_getValue'688'_474 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_474
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2740
-- _.if_isBootstrapAddr_
d_if_isBootstrapAddr__484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (MAlonzo.Code.Ledger.Address.T_BootstrapAddr_72 -> ()) -> ()
d_if_isBootstrapAddr__484 = erased
-- _.inject
d_inject_486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_486 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
-- _.netId
d_netId_528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_528 ~v0 = du_netId_528
du_netId_528 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_528 = coe MAlonzo.Code.Ledger.Address.du_netId_130
-- _.txOutHash
d_txOutHash_590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_590 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2730 (coe v0)
-- _.GovProposal.action
d_action_736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_734
d_action_736 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_808 (coe v0)
-- _.GovProposal.anchor
d_anchor_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_724
d_anchor_738 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_818 (coe v0)
-- _.GovProposal.deposit
d_deposit_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 -> Integer
d_deposit_740 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_814 (coe v0)
-- _.GovProposal.policy
d_policy_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  Maybe AgdaAny
d_policy_742 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_812 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 -> AgdaAny
d_prevAction_744 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_810 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_746 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_86
d_returnAddr_746 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_788 a0 = ()
-- _.PParams.Emax
d_Emax_940 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_940 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_942 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_942 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_944 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_946 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_946 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_974 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_978 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_980 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_982 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_984 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_986 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_988 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_988 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_990 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_990 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_992 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_992 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_994 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_994 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_996 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_996 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_998 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_998 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_1000 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1000 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1002 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1002 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1004 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1004 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604
d_body_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v0)
-- _.Tx.isValid
d_isValid_1420 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Bool
d_isValid_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2720 (coe v0)
-- _.Tx.txAD
d_txAD_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Maybe AgdaAny
d_txAD_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2722 (coe v0)
-- _.Tx.wits
d_wits_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2686
d_wits_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2718 (coe v0)
-- _.TxBody.collateral
d_collateral_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1428 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2680 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Maybe Integer
d_curTreasury_1430 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2674 (coe v0)
-- _.TxBody.mint
d_mint_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> AgdaAny
d_mint_1432 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2654 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2648 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> [AgdaAny]
d_reqSigHash_1436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2682 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Maybe AgdaAny
d_scriptIntHash_1438 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2684 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1440 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Maybe AgdaAny
d_txADhash_1440 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2670 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Maybe AgdaAny
d_txNetworkId_1442 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2672 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_874]
d_txcerts_1444 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2658 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
d_txdonation_1446 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2666 (coe v0)
-- _.TxBody.txfee
d_txfee_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
d_txfee_1448 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2652 (coe v0)
-- _.TxBody.txid
d_txid_1450 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> AgdaAny
d_txid_1450 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2678 (coe v0)
-- _.TxBody.txins
d_txins_1452 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1452 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2646 (coe v0)
-- _.TxBody.txouts
d_txouts_1454 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1454 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2650 (coe v0)
-- _.TxBody.txprop
d_txprop_1456 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794]
d_txprop_1456 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2664 (coe v0)
-- _.TxBody.txsize
d_txsize_1458 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
d_txsize_1458 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2676 (coe v0)
-- _.TxBody.txup
d_txup_1460 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1460 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2668 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1462 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1462 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2656 (coe v0)
-- _.TxBody.txvote
d_txvote_1464 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_776]
d_txvote_1464 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2662 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1466 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1466 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2660 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1552 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2370
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1562 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2388
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.DCert
d_DCert_1672 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1686 v0 ~v1
  = du_DecEq'45'DepositPurpose_1686 v0
du_DecEq'45'DepositPurpose_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1686 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866 (coe v1))
-- Ledger.Conway.Conformance.Utxo._.DepositPurpose
d_DepositPurpose_1690 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo._.Deposits
d_Deposits_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 -> ()
d_Deposits_1692 = erased
-- Ledger.Conway.Conformance.Utxo.updateCertDeposits
d_updateCertDeposits_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_874] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1882 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_1882 v0 v2 v3 v4
du_updateCertDeposits_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_874] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1882 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_1882 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Certs.C_delegate_876 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_1882 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0)))
                          v3
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1120
                             (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_dereg_878 v7 v8
                  -> coe
                       du_updateCertDeposits_1882 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1130
                             (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_regpool_880 v7 v8
                  -> coe
                       du_updateCertDeposits_1882 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0)))
                          v3
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_858 (coe v7))
                                (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v1)))))
                MAlonzo.Code.Ledger.Certs.C_regdrep_884 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_1882 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866
                             (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0)))
                          v3
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1120
                             (coe v4)))
                MAlonzo.Code.Ledger.Certs.C_deregdrep_886 v7 v8
                  -> coe
                       du_updateCertDeposits_1882 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0))))
                          (coe v3)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1130
                             (coe v4)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateProposalDeposits
d_updateProposalDeposits_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1950 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1950 v0 v2 v3 v4 v5
du_updateProposalDeposits_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_794] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1950 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0)))
             (coe
                du_updateProposalDeposits_1950 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_862
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateDeposits
d_updateDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1962 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1962 v0 v2 v3 v4
du_updateDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1962 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_1882 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2658 (coe v2))
      (coe
         du_updateProposalDeposits_1950 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2664 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2678 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v1))
         (coe v3))
-- Ledger.Conway.Conformance.Utxo.UTxOEnv
d_UTxOEnv_2014 a0 a1 = ()
data T_UTxOEnv_2014
  = C_UTxOEnv'46'constructor_10369 AgdaAny
                                   MAlonzo.Code.Ledger.PParams.T_PParams_244 Integer
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.slot
d_slot_2022 :: T_UTxOEnv_2014 -> AgdaAny
d_slot_2022 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_10369 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams
d_pparams_2024 ::
  T_UTxOEnv_2014 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2024 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_10369 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.treasury
d_treasury_2026 :: T_UTxOEnv_2014 -> Integer
d_treasury_2026 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_10369 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState
d_UTxOState_2028 a0 a1 = ()
data T_UTxOState_2028
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2046 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Conformance.Utxo.UTxOState.utxo
d_utxo_2038 ::
  T_UTxOState_2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2038 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2046 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.fees
d_fees_2040 :: T_UTxOState_2028 -> Integer
d_fees_2040 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2046 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.deposits
d_deposits_2042 ::
  T_UTxOState_2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2042 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2046 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.donations
d_donations_2044 :: T_UTxOState_2028 -> Integer
d_donations_2044 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2046 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo._*↓_
d__'42''8595'__2056 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__2056 ~v0 v1 v2 = du__'42''8595'__2056 v1 v2
du__'42''8595'__2056 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__2056 v0 v1
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
d_isTwoPhaseScriptAddress_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_2062 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_2062 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_2062 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_186
         (coe MAlonzo.Code.Ledger.Address.du_payCred_126 (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2826 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_212 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2840 (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Conway.Conformance.Utxo.getDataHashes
d_getDataHashes_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2074 ~v0 ~v1 v2 = du_getDataHashes_2074 v2
du_getDataHashes_2074 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2074 v0
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
d_getInputHashes_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2078 v0 ~v1 v2 v3
  = du_getInputHashes_2078 v0 v2 v3
du_getInputHashes_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2078 v0 v1 v2
  = coe
      du_getDataHashes_2074
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
              (coe
                 du_isTwoPhaseScriptAddress_2062 (coe v0) (coe v1) (coe v2)
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2646
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v1))))))
-- Ledger.Conway.Conformance.Utxo.totExUnits
d_totExUnits_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> AgdaAny
d_totExUnits_2134 v0 ~v1 v2 = du_totExUnits_2134 v0 v2
du_totExUnits_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> AgdaAny
du_totExUnits_2134 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_190
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_452
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_452
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2702
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2718 (coe v1)))
-- Ledger.Conway.Conformance.Utxo._._.outs
d_outs_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2154 ~v0 ~v1 v2 = du_outs_2154 v2
du_outs_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2154 v0
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
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2678 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2650 (coe v0))
-- Ledger.Conway.Conformance.Utxo._._.balance
d_balance_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2160 v0 ~v1 v2 = du_balance_2160 v0 v2
du_balance_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2160 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_220
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
               (coe
                  MAlonzo.Code.Ledger.Address.du_DecEq'45'EnterpriseAddr_222
                  (coe
                     MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0)))
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_224
                  (coe
                     MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0)))
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0)))
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
                                 MAlonzo.Code.Ledger.Script.d_ps_452
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_452
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2740)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2730 (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Utxo._._.cbalance
d_cbalance_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2166 v0 ~v1 v2 = du_cbalance_2166 v0 v2
du_cbalance_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2166 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
      (coe du_balance_2160 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo._._.refScriptsSize
d_refScriptsSize_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_refScriptsSize_2170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
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
         (coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1764 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
            (coe
               MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448
               (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852 (coe v0))
               erased erased erased
               (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_428
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852 (coe v0))))
               (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_452
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852 (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Transaction.d_refScripts_2764 (coe v0) (coe v3)
               (coe v2))))
-- Ledger.Conway.Conformance.Utxo._._.minfee
d_minfee_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_minfee_2180 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1756 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v2))
               (coe du_totExUnits_2134 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Fees.du_scriptsCost_1514 (coe v2)
               (coe d_refScriptsSize_2170 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2676
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v4))))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2188 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2188
  = C_Scripts'45'Yes_2268 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2348 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2226 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_txdonation_2226 ~v0 ~v1 ~v2 v3 = du_txdonation_2226 v3
du_txdonation_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
du_txdonation_2226 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2666
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2228 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_txfee_2228 ~v0 ~v1 ~v2 v3 = du_txfee_2228 v3
du_txfee_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
du_txfee_2228 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2652
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2232 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2232 ~v0 ~v1 ~v2 v3 = du_txins_2232 v3
du_txins_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2232 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2646
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2250 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2250 ~v0 v1 ~v2 ~v3 = du_pparams_2250 v1
du_pparams_2250 ::
  T_UTxOEnv_2014 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2250 v0 = coe d_pparams_2024 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2252 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> AgdaAny
d_slot_2252 ~v0 v1 ~v2 ~v3 = du_slot_2252 v1
du_slot_2252 :: T_UTxOEnv_2014 -> AgdaAny
du_slot_2252 v0 = coe d_slot_2022 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2254 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_treasury_2254 ~v0 v1 ~v2 ~v3 = du_treasury_2254 v1
du_treasury_2254 :: T_UTxOEnv_2014 -> Integer
du_treasury_2254 v0 = coe d_treasury_2026 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2258 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2258 ~v0 ~v1 v2 ~v3 = du_deposits_2258 v2
du_deposits_2258 ::
  T_UTxOState_2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2258 v0 = coe d_deposits_2042 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2260 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_donations_2260 ~v0 ~v1 v2 ~v3 = du_donations_2260 v2
du_donations_2260 :: T_UTxOState_2028 -> Integer
du_donations_2260 v0 = coe d_donations_2044 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2262 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_fees_2262 ~v0 ~v1 v2 ~v3 = du_fees_2262 v2
du_fees_2262 :: T_UTxOState_2028 -> Integer
du_fees_2262 v0 = coe d_fees_2040 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2264 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2264 ~v0 ~v1 v2 ~v3 = du_utxo_2264 v2
du_utxo_2264 ::
  T_UTxOState_2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2264 v0 = coe d_utxo_2038 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2288 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2288 ~v0 ~v1 ~v2 v3 = du_collateral_2288 v3
du_collateral_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2288 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2680
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2330 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2330 ~v0 v1 ~v2 ~v3 = du_pparams_2330 v1
du_pparams_2330 ::
  T_UTxOEnv_2014 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2330 v0 = coe d_pparams_2024 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2332 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> AgdaAny
d_slot_2332 ~v0 v1 ~v2 ~v3 = du_slot_2332 v1
du_slot_2332 :: T_UTxOEnv_2014 -> AgdaAny
du_slot_2332 v0 = coe d_slot_2022 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2334 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_treasury_2334 ~v0 v1 ~v2 ~v3 = du_treasury_2334 v1
du_treasury_2334 :: T_UTxOEnv_2014 -> Integer
du_treasury_2334 v0 = coe d_treasury_2026 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2338 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2338 ~v0 ~v1 v2 ~v3 = du_deposits_2338 v2
du_deposits_2338 ::
  T_UTxOState_2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2338 v0 = coe d_deposits_2042 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2340 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_donations_2340 ~v0 ~v1 v2 ~v3 = du_donations_2340 v2
du_donations_2340 :: T_UTxOState_2028 -> Integer
du_donations_2340 v0 = coe d_donations_2044 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2342 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 -> Integer
d_fees_2342 ~v0 ~v1 v2 ~v3 = du_fees_2342 v2
du_fees_2342 :: T_UTxOState_2028 -> Integer
du_fees_2342 v0 = coe d_fees_2040 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2344 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2344 ~v0 ~v1 v2 ~v3 = du_utxo_2344 v2
du_utxo_2344 ::
  T_UTxOState_2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2344 v0 = coe d_utxo_2038 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2350 v0 v1 v2 v3 v4
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
                  (coe v0) (coe v1) (coe d_pparams_2024 (coe v2)) (coe v4)
                  (coe d_utxo_2038 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2720 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2720 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2352 v0 v1 v2 v3 v4
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
                  (coe v0) (coe v1) (coe d_pparams_2024 (coe v2)) (coe v4)
                  (coe d_utxo_2038 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2720 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2720 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo.inInterval
d_inInterval_2356 a0 a1 a2 a3 = ()
data T_inInterval_2356
  = C_both_2364 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2368 AgdaAny | C_upper_2372 AgdaAny | C_none_2374
-- Ledger.Conway.Conformance.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2376 v0 ~v1 = du_HasCoin'45'UTxO_2376 v0
du_HasCoin'45'UTxO_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2376 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2166 (coe v0))
-- Ledger.Conway.Conformance.Utxo.Dec-inInterval
d_Dec'45'inInterval_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2378 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2378 v0 v2 v3
du_Dec'45'inInterval_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2378 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1568
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1568
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
                                                                                    C_both_2364
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1568
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
                                                         (coe C_lower_2368 v9))
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1568
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
                                                         (coe C_upper_2372 v9))
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
                                 (coe C_none_2374))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2480 v0 ~v1
  = du_HasCoin'45'UTxOState_2480 v0
du_HasCoin'45'UTxOState_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2480 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2166 (coe v0) (coe d_utxo_2038 (coe v1)))
                    (coe d_donations_2044 (coe v1)))
                 (coe d_fees_2040 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (let v2
                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866 (coe v2)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2)) (coe d_deposits_2042 (coe v1)))))
-- Ledger.Conway.Conformance.Utxo._=>ᵇ_
d__'61''62''7495'__2484 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__2484 ~v0 v1 v2 = du__'61''62''7495'__2484 v1 v2
du__'61''62''7495'__2484 :: Bool -> Bool -> Bool
du__'61''62''7495'__2484 v0 v1
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Conway.Conformance.Utxo._≤ᵇ_
d__'8804''7495'__2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  Integer -> Integer -> Bool
d__'8804''7495'__2490 ~v0 ~v1 v2 v3 = du__'8804''7495'__2490 v2 v3
du__'8804''7495'__2490 :: Integer -> Integer -> Bool
du__'8804''7495'__2490 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v0)
            (coe v1)))
-- Ledger.Conway.Conformance.Utxo._≥ᵇ_
d__'8805''7495'__2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  Integer -> Integer -> Bool
d__'8805''7495'__2492 ~v0 ~v1 v2 v3 = du__'8805''7495'__2492 v2 v3
du__'8805''7495'__2492 :: Integer -> Integer -> Bool
du__'8805''7495'__2492 v0 v1
  = coe du__'8804''7495'__2490 (coe v1) (coe v0)
-- Ledger.Conway.Conformance.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_2504 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2504 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_2504 v2 v3
du_'8799''45''8709''7495'_2504 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2504 v0 v1
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
d_coinPolicies_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 -> [AgdaAny]
d_coinPolicies_2508 v0 ~v1 = du_coinPolicies_2508 v0
du_coinPolicies_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2508 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Conformance.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2510 v0 ~v1 v2 = du_isAdaOnly'7495'_2510 v0 v2
du_isAdaOnly'7495'_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2510 v0 v1
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
                    (coe v2) (coe du_coinPolicies_2508 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0)) v1))
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0)))
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
                       v1)))
            (coe du_coinPolicies_2508 (coe v0))))
-- Ledger.Conway.Conformance.Utxo.feesOK
d_feesOK_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2514 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__2490
         (coe d_minfee_2180 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2652
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v3))))
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
                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0)))
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_452
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852
                                             (coe v0))))))
                              (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_ps_452
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1852
                                       (coe v0))))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2702
                        (coe MAlonzo.Code.Ledger.Transaction.d_wits_2718 (coe v3))))
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
                               MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_172
                               (coe
                                  MAlonzo.Code.Ledger.Address.du_payCred_126
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))))
                    (coe du_collateralRange_2658 (coe v0) (coe v3) (coe v4)))
                 (coe
                    MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                    (coe
                       du_isAdaOnly'7495'_2510 (coe v0)
                       (coe du_bal_2660 (coe v0) (coe v3) (coe v4)))
                    (coe
                       MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                       (coe
                          du__'8805''7495'__2492
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
                                (coe du_bal_2660 (coe v0) (coe v3) (coe v4)))
                             (coe (100 :: Integer)))
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txfee_2652
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v3)))
                             (coe
                                MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v2))))
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
                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_collateral_2680
                                   (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v3)))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8709'_442
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))))
         (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo._.collateralRange
d_collateralRange_2658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2658 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2658 v0 v3 v4
du_collateralRange_2658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2658 v0 v1 v2
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2730 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2680
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v1))))
-- Ledger.Conway.Conformance.Utxo._.bal
d_bal_2660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2660 v0 ~v1 ~v2 v3 v4 = du_bal_2660 v0 v3 v4
du_bal_2660 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2660 v0 v1 v2
  = coe
      du_balance_2160 (coe v0)
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2680
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v1))))
-- Ledger.Conway.Conformance.Utxo.depositsChange
d_depositsChange_2666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2666 v0 ~v1 v2 v3 v4
  = du_depositsChange_2666 v0 v2 v3 v4
du_depositsChange_2666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2666 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (let v4
                = MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866 (coe v4)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_1962 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (let v4
                = MAlonzo.Code.Ledger.Transaction.d_govStructure_2414 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_866 (coe v4)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Conway.Conformance.Utxo._._.depositRefunds
d_depositRefunds_2682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
d_depositRefunds_2682 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2682 v0 v2 v3 v4
du_depositRefunds_2682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
du_depositRefunds_2682 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_2666 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2042 (coe v2)))
-- Ledger.Conway.Conformance.Utxo._._.newDeposits
d_newDeposits_2690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
d_newDeposits_2690 v0 ~v1 v2 v3 v4
  = du_newDeposits_2690 v0 v2 v3 v4
du_newDeposits_2690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> Integer
du_newDeposits_2690 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_2666 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2042 (coe v2)))
-- Ledger.Conway.Conformance.Utxo._._.consumed
d_consumed_2698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> AgdaAny
d_consumed_2698 v0 ~v1 v2 v3 v4 = du_consumed_2698 v0 v2 v3 v4
du_consumed_2698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> AgdaAny
du_consumed_2698 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))))
            (coe
               du_balance_2160 (coe v0)
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
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0))))
                  (coe d_utxo_2038 (coe v2))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txins_2646 (coe v3))))
            (MAlonzo.Code.Ledger.Transaction.d_mint_2654 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
            (coe du_depositRefunds_2682 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_226
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1266 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
            (coe (\ v4 -> v4))
            (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2660 (coe v3))))
-- Ledger.Conway.Conformance.Utxo._._.produced
d_produced_2706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> AgdaAny
d_produced_2706 v0 ~v1 v2 v3 v4 = du_produced_2706 v0 v2 v3 v4
du_produced_2706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_2028 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604 -> AgdaAny
du_produced_2706 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))))
            (coe du_balance_2160 (coe v0) (coe du_outs_2154 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2652 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
            (coe du_newDeposits_2690 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2666 (coe v3)))
-- Ledger.Conway.Conformance.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2714 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 -> Integer
d_utxoEntrySizeWithoutVal_2714 ~v0
  = du_utxoEntrySizeWithoutVal_2714
du_utxoEntrySizeWithoutVal_2714 :: Integer
du_utxoEntrySizeWithoutVal_2714 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.utxoEntrySize
d_utxoEntrySize_2716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2716 v0 ~v1 v2 = du_utxoEntrySize_2716 v0 v2
du_utxoEntrySize_2716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2716 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2740 (coe v1)))
-- Ledger.Conway.Conformance.Utxo._≡?_
d__'8801''63'__2722 a0 a1 a2 a3 a4 = ()
data T__'8801''63'__2722
  = C_'8801''63''45'nothing_2728 | C_'8801''63''45'just_2732
-- Ledger.Conway.Conformance.Utxo.≟?
d_'8799''63'_2740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2740 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8799''63'_2740 v3 v4 v5
du_'8799''63'_2740 ::
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2740 v0 v1 v2
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
                                       (coe C_'8801''63''45'just_2732))))
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
                   (coe C_'8801''63''45'nothing_2728)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2762 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2762
  = C_UTXO'45'inductive_2858 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604
d_body_2770 ~v0 ~v1 v2 = du_body_2770 v2
du_body_2770 ::
  T_GeneralizeTel_74007 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2604
du_body_2770 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2716
      (coe d_'46'generalizedField'45'tx_73999 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> Maybe Integer
d_curTreasury_2778 ~v0 ~v1 v2 = du_curTreasury_2778 v2
du_curTreasury_2778 :: T_GeneralizeTel_74007 -> Maybe Integer
du_curTreasury_2778 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2674
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> AgdaAny
d_mint_2780 ~v0 ~v1 v2 = du_mint_2780 v2
du_mint_2780 :: T_GeneralizeTel_74007 -> AgdaAny
du_mint_2780 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2654
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2782 ~v0 ~v1 v2 = du_refInputs_2782 v2
du_refInputs_2782 ::
  T_GeneralizeTel_74007 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2782 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2648
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> Maybe AgdaAny
d_txNetworkId_2790 ~v0 ~v1 v2 = du_txNetworkId_2790 v2
du_txNetworkId_2790 :: T_GeneralizeTel_74007 -> Maybe AgdaAny
du_txNetworkId_2790 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2672
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2800 ~v0 ~v1 v2 = du_txins_2800 v2
du_txins_2800 ::
  T_GeneralizeTel_74007 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2800 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2646
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2802 ~v0 ~v1 v2 = du_txouts_2802 v2
du_txouts_2802 ::
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2802 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2650
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> Integer
d_txsize_2806 ~v0 ~v1 v2 = du_txsize_2806 v2
du_txsize_2806 :: T_GeneralizeTel_74007 -> Integer
du_txsize_2806 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2676
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2810 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2810 ~v0 ~v1 v2 = du_txvldt_2810 v2
du_txvldt_2810 ::
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2810 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2656
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2814 ~v0 ~v1 v2 = du_txwdrls_2814 v2
du_txwdrls_2814 ::
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2814 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2660
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2716
         (coe d_'46'generalizedField'45'tx_73999 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2818 ~v0 ~v1 v2 = du_pparams_2818 v2
du_pparams_2818 ::
  T_GeneralizeTel_74007 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2818 v0
  = coe
      d_pparams_2024 (coe d_'46'generalizedField'45'Γ_74001 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2820 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> AgdaAny
d_slot_2820 ~v0 ~v1 v2 = du_slot_2820 v2
du_slot_2820 :: T_GeneralizeTel_74007 -> AgdaAny
du_slot_2820 v0
  = coe d_slot_2022 (coe d_'46'generalizedField'45'Γ_74001 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> Integer
d_treasury_2822 ~v0 ~v1 v2 = du_treasury_2822 v2
du_treasury_2822 :: T_GeneralizeTel_74007 -> Integer
du_treasury_2822 v0
  = coe
      d_treasury_2026 (coe d_'46'generalizedField'45'Γ_74001 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2826 ~v0 ~v1 v2 = du_deposits_2826 v2
du_deposits_2826 ::
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2826 v0
  = coe
      d_deposits_2042 (coe d_'46'generalizedField'45's_74003 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> Integer
d_donations_2828 ~v0 ~v1 v2 = du_donations_2828 v2
du_donations_2828 :: T_GeneralizeTel_74007 -> Integer
du_donations_2828 v0
  = coe
      d_donations_2044 (coe d_'46'generalizedField'45's_74003 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> Integer
d_fees_2830 ~v0 ~v1 v2 = du_fees_2830 v2
du_fees_2830 :: T_GeneralizeTel_74007 -> Integer
du_fees_2830 v0
  = coe d_fees_2040 (coe d_'46'generalizedField'45's_74003 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2832 ~v0 ~v1 v2 = du_utxo_2832 v2
du_utxo_2832 ::
  T_GeneralizeTel_74007 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2832 v0
  = coe d_utxo_2038 (coe d_'46'generalizedField'45's_74003 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2706 ->
  T_UTxOEnv_2014 ->
  T_UTxOState_2028 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2902 v0 v1 v2 v3 v4
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
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2646
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2)))
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
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_2038 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2646
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2648
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0))))
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
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1226 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1224 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2646
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2648
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2378 (coe v0) (coe d_slot_2022 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2656
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           d_feesOK_2514 (coe v0) (coe v1) (coe d_pparams_2024 (coe v3))
                           (coe v2) (coe d_utxo_2038 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0)))
                           (coe
                              du_consumed_2698 (coe v0) (coe d_pparams_2024 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2)))
                           (coe
                              du_produced_2706 (coe v0) (coe d_pparams_2024 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2654
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2676
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2716 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_314
                                    (coe d_pparams_2024 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2170
                                       (coe v0) (coe v1) (coe d_utxo_2038 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342
                                       (coe d_pparams_2024 (coe v3))))
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
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2300
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2716 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336
                                                        (coe d_pparams_2024 (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2740
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
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2730
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2650
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2716
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
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1758 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2740
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                     (coe d_pparams_2024 (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2730
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2650
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2716
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
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                        (coe
                                                           (\ v6 ->
                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                        (coe
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                (MAlonzo.Code.Ledger.Address.d_attrsSize_84
                                                                   (coe v6))
                                                                (64 :: Integer))))
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
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2730
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2650
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2716
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
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_130
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242
                                                              (coe v0)))))
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
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2730
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2650
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2716
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
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_92
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2660
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2716
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      du_'8799''63'_2740
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2672
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2716
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1242
                                                            (coe v0))))
                                                   (coe
                                                      du_'8799''63'_2740
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2674
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2716
                                                            (coe v2)))
                                                      (coe d_treasury_2026 (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_73999 ::
  T_GeneralizeTel_74007 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2706
d_'46'generalizedField'45'tx_73999 v0
  = case coe v0 of
      C_mkGeneralizeTel_74009 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_74001 ::
  T_GeneralizeTel_74007 -> T_UTxOEnv_2014
d_'46'generalizedField'45'Γ_74001 v0
  = case coe v0 of
      C_mkGeneralizeTel_74009 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_74003 ::
  T_GeneralizeTel_74007 -> T_UTxOState_2028
d_'46'generalizedField'45's_74003 v0
  = case coe v0 of
      C_mkGeneralizeTel_74009 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_74005 ::
  T_GeneralizeTel_74007 -> T_UTxOState_2028
d_'46'generalizedField'45's''_74005 v0
  = case coe v0 of
      C_mkGeneralizeTel_74009 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_74007 a0 a1 = ()
data T_GeneralizeTel_74007
  = C_mkGeneralizeTel_74009 MAlonzo.Code.Ledger.Transaction.T_Tx_2706
                            T_UTxOEnv_2014 T_UTxOState_2028 T_UTxOState_2028
