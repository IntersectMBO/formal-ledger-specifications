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

module MAlonzo.Code.Ledger.Conway.Specification.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Decidable.WithoutK
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.ListAction
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Fees
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Dec-isVKey
d_Dec'45'isVKey_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_78 ~v0 = du_Dec'45'isVKey_78
du_Dec'45'isVKey_78 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_78
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_88 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
            (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_90 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
            (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_124 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
            (coe v0)))
-- _.ExUnits
d_ExUnits_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_166 = erased
-- _.GovProposal
d_GovProposal_190 a0 = ()
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_280 ~v0 = du_HasNetworkId'45'RwdAddr_280
du_HasNetworkId'45'RwdAddr_280 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
du_HasNetworkId'45'RwdAddr_280
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- _.HasPParams
d_HasPParams_282 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_302 a0 a1 a2 = ()
-- _.MemoryEstimate
d_MemoryEstimate_354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_354 = erased
-- _.NetworkId
d_NetworkId_362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_362 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
         (coe v0))
-- _.PParams
d_PParams_386 a0 = ()
-- _.PParamsOf
d_PParamsOf_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- _.ScriptHash
d_ScriptHash_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_444 = erased
-- _.Slot
d_Slot_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_490 = erased
-- _.Tx
d_Tx_518 a0 = ()
-- _.TxBody
d_TxBody_522 a0 = ()
-- _.TxOutʰ
d_TxOut'688'_536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut'688'_536 = erased
-- _.UTxO
d_UTxO_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_542 = erased
-- _.UTxOOf
d_UTxOOf_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3176
      (coe v0)
-- _.Value
d_Value_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_562 = erased
-- _.coin
d_coin_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
-- _.getValueʰ
d_getValue'688'_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_612 ~v0 = du_getValue'688'_612
du_getValue'688'_612 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_612
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3420
-- _.inject
d_inject_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
-- _.netId
d_netId_674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_674 ~v0 = du_netId_674
du_netId_674 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_674
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- _.txOutHash
d_txOutHash_736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
      (coe v0)
-- _.GovActions.GovProposal
d_GovProposal_898 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_874
d_action_1002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_962
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_808
d_anchor_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_972
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948 ->
  Integer
d_deposit_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_968
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948 ->
  Maybe AgdaAny
d_policy_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_966
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948 ->
  AgdaAny
d_prevAction_1010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_964
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_970
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3176
      (coe v0)
-- _.PParams.Emax
d_Emax_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_Emax_1216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_386
      (coe v0)
-- _.PParams.a
d_a_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_a_1218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_358 (coe v0)
-- _.PParams.a0
d_a0_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_390 (coe v0)
-- _.PParams.b
d_b_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_b_1222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_360 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMaxTermLength_1224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_402
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMinSize_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_400
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_coinsPerUTxOByte_1228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_collateralPercentage_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_costmdls_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_394
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_drepActivity_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_410
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_drepDeposit_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_408
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_398
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionDeposit_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_406
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionLifetime_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_404
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_keyDeposit_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_maxBlockExUnits_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_350
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxBlockSize_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_342
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxCollateralInputs_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_354
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxHeaderSize_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_346
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerBlock_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_378
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerTx_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_maxTxExUnits_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_348
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxTxSize_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxValSize_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_374
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_minUTxOValue_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_384
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_366
      (coe v0)
-- _.PParams.nopt
d_nopt_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_nopt_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_388
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_poolDeposit_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246
d_poolThresholds_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_396
      (coe v0)
-- _.PParams.prices
d_prices_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_prices_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_372
      (coe v0)
-- _.PParams.pv
d_pv_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_356 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_382
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_380
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_368
      (coe v0)
-- _.Tx.body
d_body_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
d_body_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
      (coe v0)
-- _.Tx.isValid
d_isValid_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Bool
d_isValid_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
      (coe v0)
-- _.Tx.txAD
d_txAD_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Maybe AgdaAny
d_txAD_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3384
      (coe v0)
-- _.Tx.txsize
d_txsize_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Integer
d_txsize_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3380
      (coe v0)
-- _.Tx.wits
d_wits_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3342
d_wits_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3226
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Maybe Integer
d_currentTreasury_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3250
      (coe v0)
-- _.TxBody.mint
d_mint_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
d_mint_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3252
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3224
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [AgdaAny]
d_reqSignerHashes_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3254
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3256
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Maybe AgdaAny
d_txADhash_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3240
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242]
d_txCerts_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3232
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
d_txDonation_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3242
      (coe v0)
-- _.TxBody.txFee
d_txFee_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
d_txFee_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948]
d_txGovProposals_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3246
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3244
      (coe v0)
-- _.TxBody.txId
d_txId_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
d_txId_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3230
      (coe v0)
-- _.TxBody.txIns
d_txIns_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Maybe AgdaAny
d_txNetworkId_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3248
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3238
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3236
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1818 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2630
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Utxo._.evalP2Scripts
d_evalP2Scripts_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1822 ~v0 v1 = du_evalP2Scripts_1822 v1
du_evalP2Scripts_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2670
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.DCert
d_DCert_1916 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1936 v0 ~v1
  = du_DecEq'45'DepositPurpose_1936 v0
du_DecEq'45'DepositPurpose_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe v0))
-- Ledger.Conway.Specification.Utxo._.DepositPurpose
d_DepositPurpose_1942 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo._.Deposits
d_Deposits_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_Deposits_1944 = erased
-- Ledger.Conway.Specification.Utxo._.DepositsOf
d_DepositsOf_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.HasDeposits
d_HasDeposits_2000 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
      (coe v0)
-- Ledger.Conway.Specification.Utxo.totExUnits
d_totExUnits_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  AgdaAny
d_totExUnits_2292 v0 ~v1 v2 = du_totExUnits_2292 v0 v2
du_totExUnits_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  AgdaAny
du_totExUnits_2292 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
               (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3358
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
            (coe v1)))
-- Ledger.Conway.Specification.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  Integer
d_utxoEntrySizeWithoutVal_2304 ~v0
  = du_utxoEntrySizeWithoutVal_2304
du_utxoEntrySizeWithoutVal_2304 :: Integer
du_utxoEntrySizeWithoutVal_2304 = coe (8 :: Integer)
-- Ledger.Conway.Specification.Utxo.utxoEntrySize
d_utxoEntrySize_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2306 v0 ~v1 v2 = du_utxoEntrySize_2306 v0 v2
du_utxoEntrySize_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2306 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3420
            (coe v1)))
-- Ledger.Conway.Specification.Utxo.UTxOEnv
d_UTxOEnv_2310 a0 a1 = ()
data T_UTxOEnv_2310
  = C_constructor_2324 AgdaAny
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                       Integer
-- Ledger.Conway.Specification.Utxo.UTxOEnv.slot
d_slot_2318 :: T_UTxOEnv_2310 -> AgdaAny
d_slot_2318 v0
  = case coe v0 of
      C_constructor_2324 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOEnv.pparams
d_pparams_2320 ::
  T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2320 v0
  = case coe v0 of
      C_constructor_2324 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOEnv.treasury
d_treasury_2322 :: T_UTxOEnv_2310 -> Integer
d_treasury_2322 v0
  = case coe v0 of
      C_constructor_2324 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState
d_UTxOState_2326 a0 a1 = ()
data T_UTxOState_2326
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2344 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Specification.Utxo.UTxOState.utxo
d_utxo_2336 ::
  T_UTxOState_2326 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2336 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2344 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.fees
d_fees_2338 :: T_UTxOState_2326 -> Integer
d_fees_2338 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2344 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.deposits
d_deposits_2340 ::
  T_UTxOState_2326 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2340 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2344 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.donations
d_donations_2342 :: T_UTxOState_2326 -> Integer
d_donations_2342 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2344 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.HasUTxOState
d_HasUTxOState_2350 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2350
  = C_constructor_2360 (AgdaAny -> T_UTxOState_2326)
-- Ledger.Conway.Specification.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2358 ::
  T_HasUTxOState_2350 -> AgdaAny -> T_UTxOState_2326
d_UTxOStateOf_2358 v0
  = case coe v0 of
      C_constructor_2360 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo._.UTxOStateOf
d_UTxOStateOf_2364 ::
  T_HasUTxOState_2350 -> AgdaAny -> T_UTxOState_2326
d_UTxOStateOf_2364 v0 = coe d_UTxOStateOf_2358 (coe v0)
-- Ledger.Conway.Specification.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'UTxOEnv_2366 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2366
du_HasPParams'45'UTxOEnv_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
du_HasPParams'45'UTxOEnv_2366
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_428
      (coe (\ v0 -> d_pparams_2320 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168
d_HasUTxO'45'UTxOState_2368 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2368
du_HasUTxO'45'UTxOState_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168
du_HasUTxO'45'UTxOState_2368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3178
      (coe (\ v0 -> d_utxo_2336 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasFee-UTxOState
d_HasFee'45'UTxOState_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2370 ~v0 ~v1 = du_HasFee'45'UTxOState_2370
du_HasFee'45'UTxOState_2370 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2370
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_fees_2338 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
d_HasDeposits'45'UTxOState_2372 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2372
du_HasDeposits'45'UTxOState_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
du_HasDeposits'45'UTxOState_2372
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1078
      (coe (\ v0 -> d_deposits_2340 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2374 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2374
du_HasDonations'45'UTxOState_2374 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2374
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_donations_2342 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2376 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2376
du_HasCast'45'UTxOEnv_2376 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2376
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
                                 (2310 :: Integer) (18240141987391769988 :: Integer)
                                 "Ledger.Conway.Specification.Utxo.UTxOEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (490 :: Integer) (18240141987391769988 :: Integer) "_.Slot"
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
                                    (2310 :: Integer) (18240141987391769988 :: Integer)
                                    "Ledger.Conway.Specification.Utxo.UTxOEnv"
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
                                    (386 :: Integer) (18240141987391769988 :: Integer) "_.PParams"
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
                                       (2310 :: Integer) (18240141987391769988 :: Integer)
                                       "Ledger.Conway.Specification.Utxo.UTxOEnv"
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
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_constructor_2324))
-- Ledger.Conway.Specification.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2378 ~v0 ~v1 = du_HasCast'45'UTxOState_2378
du_HasCast'45'UTxOState_2378 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2378
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
                                 (2326 :: Integer) (18240141987391769988 :: Integer)
                                 "Ledger.Conway.Specification.Utxo.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (542 :: Integer) (18240141987391769988 :: Integer) "_.UTxO"
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
                                    (2326 :: Integer) (18240141987391769988 :: Integer)
                                    "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                       (2326 :: Integer) (18240141987391769988 :: Integer)
                                       "Ledger.Conway.Specification.Utxo.UTxOState"
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
                                       (1944 :: Integer) (18240141987391769988 :: Integer)
                                       "Ledger.Conway.Specification.Utxo._.Deposits"
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
                                          (2326 :: Integer) (18240141987391769988 :: Integer)
                                          "Ledger.Conway.Specification.Utxo.UTxOState"
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
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2344))
-- Ledger.Conway.Specification.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2380 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2380
  = C_UTXO'45'inductive_3376 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxo._._.outs
d_outs_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2390 ~v0 ~v1 v2 = du_outs_2390 v2
du_outs_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2390 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3230
                 (coe v0))
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
         (coe v0))
-- Ledger.Conway.Specification.Utxo._._.balance
d_balance_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2396 v0 ~v1 v2 = du_balance_2396 v0 v2
du_balance_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2396 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
            (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                  (coe v0)))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                        (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3420)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
            (coe v0))
         (coe v1))
-- Ledger.Conway.Specification.Utxo._._.cbalance
d_cbalance_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2402 v0 ~v1 v2 = du_cbalance_2402 v0 v2
du_cbalance_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2402 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
      (coe du_balance_2396 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Utxo._._.refScriptsSize
d_refScriptsSize_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Integer
d_refScriptsSize_2406 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2244
            (coe v1))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3444
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.minfee
d_minfee_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Integer
d_minfee_2412 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2236
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_372
                  (coe v2))
               (coe du_totExUnits_2292 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Fees.d_scriptsCost_1792
               (coe v0) (coe v2)
               (coe d_refScriptsSize_2406 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_360 (coe v2)))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_358 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3380
            (coe v4)))
-- Ledger.Conway.Specification.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2420 v0 ~v1 = du_HasCoin'45'UTxO_2420 v0
du_HasCoin'45'UTxO_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2420 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe du_cbalance_2402 (coe v0))
-- Ledger.Conway.Specification.Utxo.certDeposit
d_certDeposit_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2422 ~v0 ~v1 v2 v3 = du_certDeposit_2422 v2 v3
du_certDeposit_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2422 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1244 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                      (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1248 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1056
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
                      (coe v1)))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1252 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                      (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1258 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
                      (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Specification.Utxo.certRefund
d_certRefund_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1052]
d_certRefund_2440 ~v0 ~v1 v2 = du_certRefund_2440 v2
du_certRefund_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1052]
du_certRefund_2440 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_444
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1246 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                   (coe v2))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1254 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                   (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Specification.Utxo.ValidCertDeposits
d_ValidCertDeposits_2450 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2450
  = C_'91''93'_2456 | C_delegate_2468 T_ValidCertDeposits_2450 |
    C_regpool_2476 T_ValidCertDeposits_2450 |
    C_regdrep_2486 T_ValidCertDeposits_2450 |
    C_reg_2494 T_ValidCertDeposits_2450 |
    C_dereg_2504 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2450 |
    C_deregdrep_2512 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2450 |
    C_ccreghot_2520 T_ValidCertDeposits_2450 |
    C_retirepool_2528 T_ValidCertDeposits_2450
-- Ledger.Conway.Specification.Utxo.validCertDeposits?
d_validCertDeposits'63'_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2536 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2536 v0 v2 v3 v4
du_validCertDeposits'63'_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2536 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2456))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1244 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_delegate_2468)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2468 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2536 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                                   (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1246 v6 v7
               -> case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                      -> let v9
                               = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                         erased
                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                                            (coe v6))
                                         (coe v8))
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))) in
                         coe
                           (case coe v9 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                -> if coe v10
                                     then case coe v11 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                   (coe
                                                      C_dereg_2504 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2504 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2536 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v13)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                                                                  (coe v6)))))
                                                      (coe v5))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v11)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe v10)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> let v8
                               = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                                         (coe v6))
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                         (coe v2))) in
                         coe
                           (case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                -> if coe v9
                                     then case coe v10 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                              -> coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                                   (coe
                                                      C_dereg_2504
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Function.Bundles.d_from_1870
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                                                                  (coe v6)))
                                                            v11))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                         (coe
                                                            MAlonzo.Code.Function.Bundles.d_from_1870
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2504 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2536 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v12)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                                                                  (coe v6)))))
                                                      (coe v5))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v10)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1248 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_regpool_2476)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2476 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2536 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1056
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
                                   (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1250 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_retirepool_2528)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2528 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2536 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1252 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_regdrep_2486)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2486 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2536 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                                   (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1254 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                                     (coe v6))
                                  (coe v7))
                               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> if coe v9
                              then case coe v10 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                                            (coe C_deregdrep_2512 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2512 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2536 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                             (coe v0)) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                        erased v12)
                                                     (coe v2)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1058
                                                           (coe v6)))))
                                               (coe v5))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              else coe
                                     seq (coe v10)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v9)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1256 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_ccreghot_2520)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2520 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2536 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1258 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_reg_2494)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2494 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2536 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v2
                          (coe
                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                             (coe
                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1054
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
                                   (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2708 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2708 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2708 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2536 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Utxo.updateCertDeposits
d_updateCertDeposits_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2710 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2710 v0 v2 v3 v4
du_updateCertDeposits_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2710 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2710 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1244 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2710 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v3 (coe du_certDeposit_2422 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1246 v7 v8
                  -> coe
                       du_updateCertDeposits_2710 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2440 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1248 v7 v8
                  -> coe
                       du_updateCertDeposits_2710 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v3 (coe du_certDeposit_2422 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1252 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2710 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v3 (coe du_certDeposit_2422 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1254 v7 v8
                  -> coe
                       du_updateCertDeposits_2710 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2440 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1258 v7 v8
                  -> coe
                       du_updateCertDeposits_2710 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v3 (coe du_certDeposit_2422 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.updateProposalDeposits
d_updateProposalDeposits_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2788 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2788 v0 v2 v3 v4 v5
du_updateProposalDeposits_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2788 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                   (coe v0)))
             (coe
                du_updateProposalDeposits_2788 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1060
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.updateDeposits
d_updateDeposits_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2800 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2800 v0 v2 v3 v4
du_updateDeposits_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2800 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2710 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3232
         (coe v2))
      (coe
         du_updateProposalDeposits_2788 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3246
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3230
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_406
            (coe v1))
         (coe v3))
-- Ledger.Conway.Specification.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2848 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2848 v0 v2 v3 v4
du_proposalDepositsΔ_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_948] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2848 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2788 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3230
         (coe v3))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_406
         (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Specification.Utxo.depositsChange
d_depositsChange_2898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2898 v0 ~v1 v2 v3 v4
  = du_depositsChange_2898 v0 v2 v3 v4
du_depositsChange_2898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2898 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__266
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_2800 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe v0)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Conway.Specification.Utxo.inInterval
d_inInterval_2908 a0 a1 a2 a3 = ()
data T_inInterval_2908
  = C_both_2916 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2920 AgdaAny | C_upper_2924 AgdaAny | C_none_2926
-- Ledger.Conway.Specification.Utxo.Dec-inInterval
d_Dec'45'inInterval_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2928 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2928 v0 v2 v3
du_Dec'45'inInterval_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2928 v0 v1 v2
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
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_272
                                            (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
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
                                                                                    C_both_2916
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
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
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
                                                         (coe C_lower_2920 v9))
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
                                         (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
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
                                                         (coe C_upper_2924 v9))
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
                                 (coe C_none_2926))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3030 v0 ~v1
  = du_HasCoin'45'UTxOState_3030 v0
du_HasCoin'45'UTxOState_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3030 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2402 (coe v0) (coe d_utxo_2336 (coe v1)))
                    (coe d_donations_2342 (coe v1)))
                 (coe d_fees_2338 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1084
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                       (coe v0)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                 (coe (\ v2 -> v2)) (coe d_deposits_2340 (coe v1)))))
-- Ledger.Conway.Specification.Utxo.coinPolicies
d_coinPolicies_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [AgdaAny]
d_coinPolicies_3034 v0 ~v1 = du_coinPolicies_3034 v0
du_coinPolicies_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny]
du_coinPolicies_3034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
            (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Specification.Utxo.isAdaOnly
d_isAdaOnly_3036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  AgdaAny -> ()
d_isAdaOnly_3036 = erased
-- Ledger.Conway.Specification.Utxo.collateralCheck
d_collateralCheck_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_3040 = erased
-- Ledger.Conway.Specification.Utxo._.balance′
d_balance'8242'_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'8242'_3102 v0 ~v1 ~v2 v3 v4
  = du_balance'8242'_3102 v0 v3 v4
du_balance'8242'_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'8242'_3102 v0 v1 v2
  = coe
      du_balance_2396 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                  (coe v0))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                  (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
               (coe v1))))
-- Ledger.Conway.Specification.Utxo._._.depositRefunds
d_depositRefunds_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
d_depositRefunds_3116 v0 ~v1 v2 v3 v4
  = du_depositRefunds_3116 v0 v2 v3 v4
du_depositRefunds_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
du_depositRefunds_3116 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_2898 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2340 (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.newDeposits
d_newDeposits_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
d_newDeposits_3124 v0 ~v1 v2 v3 v4
  = du_newDeposits_3124 v0 v2 v3 v4
du_newDeposits_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  Integer
du_newDeposits_3124 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_2898 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2340 (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.consumed
d_consumed_3132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
d_consumed_3132 v0 ~v1 v2 v3 v4 = du_consumed_3132 v0 v2 v3 v4
du_consumed_3132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
du_consumed_3132 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                     (coe v0))))
            (coe
               du_balance_2396 (coe v0)
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     erased
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                           (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                           (coe v0))))
                  (coe d_utxo_2336 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
                     (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3252
               (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v0))
            (coe du_depositRefunds_3116 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
            (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                     (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3236
               (coe v3))))
-- Ledger.Conway.Specification.Utxo._._.produced
d_produced_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
d_produced_3140 v0 ~v1 v2 v3 v4 = du_produced_3140 v0 v2 v3 v4
du_produced_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  AgdaAny
du_produced_3140 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                  (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                     (coe v0))))
            (coe du_balance_2396 (coe v0) (coe du_outs_2390 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
                  (coe v3))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v0))
            (coe du_newDeposits_3124 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3242
            (coe v3)))
-- Ledger.Conway.Specification.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3164 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3164
  = C_Scripts'45'Yes_3220 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3276 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxo._.isValid
d_isValid_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_186929 -> Bool
d_isValid_3170 ~v0 ~v1 v2 = du_isValid_3170 v2
du_isValid_3170 :: T_GeneralizeTel_186929 -> Bool
du_isValid_3170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
      (coe d_'46'generalizedField'45'tx_186919 (coe v0))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_186929 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
d_body_3174 ~v0 ~v1 v2 = du_body_3174 v2
du_body_3174 ::
  T_GeneralizeTel_186929 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
du_body_3174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
      (coe d_'46'generalizedField'45'tx_186919 (coe v0))
-- Ledger.Conway.Specification.Utxo._.txCerts
d_txCerts_3196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_186929 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242]
d_txCerts_3196 ~v0 ~v1 v2 = du_txCerts_3196 v2
du_txCerts_3196 ::
  T_GeneralizeTel_186929 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242]
du_txCerts_3196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_186919 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txDonation
d_txDonation_3198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_186929 -> Integer
d_txDonation_3198 ~v0 ~v1 v2 = du_txDonation_3198 v2
du_txDonation_3198 :: T_GeneralizeTel_186929 -> Integer
du_txDonation_3198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_186919 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txFee
d_txFee_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_186929 -> Integer
d_txFee_3200 ~v0 ~v1 v2 = du_txFee_3200 v2
du_txFee_3200 :: T_GeneralizeTel_186929 -> Integer
du_txFee_3200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_186919 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txIns
d_txIns_3208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_186929 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3208 ~v0 ~v1 v2 = du_txIns_3208 v2
du_txIns_3208 ::
  T_GeneralizeTel_186929 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_186919 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.isValid
d_isValid_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_194091 -> Bool
d_isValid_3226 ~v0 ~v1 v2 = du_isValid_3226 v2
du_isValid_3226 :: T_GeneralizeTel_194091 -> Bool
du_isValid_3226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
      (coe d_'46'generalizedField'45'tx_194081 (coe v0))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_194091 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
d_body_3230 ~v0 ~v1 v2 = du_body_3230 v2
du_body_3230 ::
  T_GeneralizeTel_194091 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
du_body_3230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
      (coe d_'46'generalizedField'45'tx_194081 (coe v0))
-- Ledger.Conway.Specification.Utxo._.collateralInputs
d_collateralInputs_3238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_194091 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_3238 ~v0 ~v1 v2 = du_collateralInputs_3238 v2
du_collateralInputs_3238 ::
  T_GeneralizeTel_194091 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_3238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_194081 (coe v0)))
-- Ledger.Conway.Specification.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3278 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            du_Dec'45'ValidCertDeposits_2708 (coe v0)
            (coe d_pparams_2320 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3232
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                  (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2670
                  v1
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2630
                     (coe v0) (coe v1) (coe d_pparams_2320 (coe v2)) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
                  (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
                  (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Conway.Specification.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_UTxOEnv_2310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3280 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2670
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2630
                  (coe v0) (coe v1) (coe d_pparams_2320 (coe v2)) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
               (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
               (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
d_body_3296 ~v0 ~v1 v2 = du_body_3296 v2
du_body_3296 ::
  T_GeneralizeTel_207499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
du_body_3296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
      (coe d_'46'generalizedField'45'tx_207495 (coe v0))
-- Ledger.Conway.Specification.Utxo._.txsize
d_txsize_3298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> Integer
d_txsize_3298 ~v0 ~v1 v2 = du_txsize_3298 v2
du_txsize_3298 :: T_GeneralizeTel_207499 -> Integer
du_txsize_3298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3380
      (coe d_'46'generalizedField'45'tx_207495 (coe v0))
-- Ledger.Conway.Specification.Utxo._.wits
d_wits_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3342
d_wits_3300 ~v0 ~v1 v2 = du_wits_3300 v2
du_wits_3300 ::
  T_GeneralizeTel_207499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3342
du_wits_3300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
      (coe d_'46'generalizedField'45'tx_207495 (coe v0))
-- Ledger.Conway.Specification.Utxo._.currentTreasury
d_currentTreasury_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> Maybe Integer
d_currentTreasury_3306 ~v0 ~v1 v2 = du_currentTreasury_3306 v2
du_currentTreasury_3306 :: T_GeneralizeTel_207499 -> Maybe Integer
du_currentTreasury_3306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.mint
d_mint_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> AgdaAny
d_mint_3308 ~v0 ~v1 v2 = du_mint_3308 v2
du_mint_3308 :: T_GeneralizeTel_207499 -> AgdaAny
du_mint_3308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.refInputs
d_refInputs_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3310 ~v0 ~v1 v2 = du_refInputs_3310 v2
du_refInputs_3310 ::
  T_GeneralizeTel_207499 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txFee
d_txFee_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> Integer
d_txFee_3322 ~v0 ~v1 v2 = du_txFee_3322 v2
du_txFee_3322 :: T_GeneralizeTel_207499 -> Integer
du_txFee_3322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txIns
d_txIns_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3330 ~v0 ~v1 v2 = du_txIns_3330 v2
du_txIns_3330 ::
  T_GeneralizeTel_207499 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txNetworkId
d_txNetworkId_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> Maybe AgdaAny
d_txNetworkId_3332 ~v0 ~v1 v2 = du_txNetworkId_3332 v2
du_txNetworkId_3332 :: T_GeneralizeTel_207499 -> Maybe AgdaAny
du_txNetworkId_3332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txOuts
d_txOuts_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3334 ~v0 ~v1 v2 = du_txOuts_3334 v2
du_txOuts_3334 ::
  T_GeneralizeTel_207499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txVldt
d_txVldt_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3336 ~v0 ~v1 v2 = du_txVldt_3336 v2
du_txVldt_3336 ::
  T_GeneralizeTel_207499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txWithdrawals
d_txWithdrawals_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3338 ~v0 ~v1 v2 = du_txWithdrawals_3338 v2
du_txWithdrawals_3338 ::
  T_GeneralizeTel_207499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txrdmrs
d_txrdmrs_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_207499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3348 ~v0 ~v1 v2 = du_txrdmrs_3348 v2
du_txrdmrs_3348 ::
  T_GeneralizeTel_207499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_3348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3358
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
         (coe d_'46'generalizedField'45'tx_207495 (coe v0)))
-- Ledger.Conway.Specification.Utxo.UTXO-premises
d_UTXO'45'premises_3422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_UTxOEnv_2310 ->
  T_UTxOState_2326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3422 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                        (coe v0))
                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                        (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                     (coe v4)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_444
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                             (coe v0))
                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                             (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_562
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                          (coe d_utxo_2336 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                        (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3224
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                        (coe v4)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                           (coe v0))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__706
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                              (coe v0))
                           (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3222
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3224
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                           (coe v4))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_444
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                  (coe
                     du_Dec'45'inInterval_2928 (coe v0) (coe d_slot_2318 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3238
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                           (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (d_minfee_2412
                           (coe v0) (coe v1) (coe d_pparams_2320 (coe v2))
                           (coe d_utxo_2336 (coe v3)) (coe v4))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                              (coe v4))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                                    (coe
                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                          erased
                                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                         (coe v0))))))
                                          (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3358
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
                                          (coe v4))))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_444
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_range_564
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                                (coe v0))))
                                       (coe d_utxo_2336 (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3226
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                             (coe v4))))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                     (coe v0)))
                                               (coe v5) (coe du_coinPolicies_3034 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                             (coe v0))
                                          (coe
                                             du_balance'8242'_3102 (coe v0) (coe v4)
                                             (coe d_utxo_2336 (coe v3)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                     (coe v0)))
                                               (coe v5)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                     (coe v0))
                                                  (coe
                                                     du_balance'8242'_3102 (coe v0) (coe v4)
                                                     (coe d_utxo_2336 (coe v3))))))
                                       (coe du_coinPolicies_3034 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3234
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
                                             (coe d_pparams_2320 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                (coe v0))
                                             (coe
                                                du_balance'8242'_3102 (coe v0) (coe v4)
                                                (coe d_utxo_2336 (coe v3))))
                                          (coe (100 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1170
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
                                                   (coe v0))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3226
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8709'_444
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                    (coe v0)))
                              (coe
                                 du_consumed_3132 (coe v0) (coe d_pparams_2320 (coe v2)) (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                    (coe v4)))
                              (coe
                                 du_produced_3140 (coe v0) (coe d_pparams_2320 (coe v2)) (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                    (coe v4))))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                       (coe v0))
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3252
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                          (coe v4))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3380
                                       (coe v4))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
                                       (coe d_pparams_2320 (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (d_refScriptsSize_2406
                                          (coe v0) (coe v1) (coe d_utxo_2336 (coe v3)) (coe v4))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
                                          (coe d_pparams_2320 (coe v2))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                        (coe v0))
                                                     (mulInt
                                                        (coe
                                                           addInt (coe (160 :: Integer))
                                                           (coe
                                                              du_utxoEntrySize_2306 (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
                                                           (coe d_pparams_2320 (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3420
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v5)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                             (coe
                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                      (coe v4))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2238
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3420
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
                                                        (coe d_pparams_2320 (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                (coe
                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                         (coe v4))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
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
                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
                                                                   (coe v6))
                                                                (64 :: Integer)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v5))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_564
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                            (coe v4))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v5)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_range_564
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3410
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3228
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                               (coe v4))))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         (\ v5 ->
                                                            coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                    (coe v0)))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3236
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                               (coe v4)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3248
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3250
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe d_treasury_2322 (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_186917 ::
  T_GeneralizeTel_186929 -> T_UTxOEnv_2310
d_'46'generalizedField'45'Γ_186917 v0
  = case coe v0 of
      C_mkGeneralizeTel_186931 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_186919 ::
  T_GeneralizeTel_186929 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
d_'46'generalizedField'45'tx_186919 v0
  = case coe v0 of
      C_mkGeneralizeTel_186931 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_186921 ::
  T_GeneralizeTel_186929 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_186921 v0
  = case coe v0 of
      C_mkGeneralizeTel_186931 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_186923 ::
  T_GeneralizeTel_186929 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_186923 v0
  = case coe v0 of
      C_mkGeneralizeTel_186931 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_186925 ::
  T_GeneralizeTel_186929 -> Integer
d_'46'generalizedField'45'fees_186925 v0
  = case coe v0 of
      C_mkGeneralizeTel_186931 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_186927 ::
  T_GeneralizeTel_186929 -> Integer
d_'46'generalizedField'45'donations_186927 v0
  = case coe v0 of
      C_mkGeneralizeTel_186931 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_186929 a0 a1 = ()
data T_GeneralizeTel_186929
  = C_mkGeneralizeTel_186931 T_UTxOEnv_2310
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_194079 ::
  T_GeneralizeTel_194091 -> T_UTxOEnv_2310
d_'46'generalizedField'45'Γ_194079 v0
  = case coe v0 of
      C_mkGeneralizeTel_194093 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_194081 ::
  T_GeneralizeTel_194091 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
d_'46'generalizedField'45'tx_194081 v0
  = case coe v0 of
      C_mkGeneralizeTel_194093 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_194083 ::
  T_GeneralizeTel_194091 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_194083 v0
  = case coe v0 of
      C_mkGeneralizeTel_194093 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_194085 ::
  T_GeneralizeTel_194091 -> Integer
d_'46'generalizedField'45'fees_194085 v0
  = case coe v0 of
      C_mkGeneralizeTel_194093 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_194087 ::
  T_GeneralizeTel_194091 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_194087 v0
  = case coe v0 of
      C_mkGeneralizeTel_194093 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_194089 ::
  T_GeneralizeTel_194091 -> Integer
d_'46'generalizedField'45'donations_194089 v0
  = case coe v0 of
      C_mkGeneralizeTel_194093 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_194091 a0 a1 = ()
data T_GeneralizeTel_194091
  = C_mkGeneralizeTel_194093 T_UTxOEnv_2310
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_207491 ::
  T_GeneralizeTel_207499 -> T_UTxOEnv_2310
d_'46'generalizedField'45'Γ_207491 v0
  = case coe v0 of
      C_mkGeneralizeTel_207501 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-s
d_'46'generalizedField'45's_207493 ::
  T_GeneralizeTel_207499 -> T_UTxOState_2326
d_'46'generalizedField'45's_207493 v0
  = case coe v0 of
      C_mkGeneralizeTel_207501 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_207495 ::
  T_GeneralizeTel_207499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
d_'46'generalizedField'45'tx_207495 v0
  = case coe v0 of
      C_mkGeneralizeTel_207501 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_207497 ::
  T_GeneralizeTel_207499 -> T_UTxOState_2326
d_'46'generalizedField'45's''_207497 v0
  = case coe v0 of
      C_mkGeneralizeTel_207501 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_207499 a0 a1 = ()
data T_GeneralizeTel_207499
  = C_mkGeneralizeTel_207501 T_UTxOEnv_2310 T_UTxOState_2326
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
                             T_UTxOState_2326
