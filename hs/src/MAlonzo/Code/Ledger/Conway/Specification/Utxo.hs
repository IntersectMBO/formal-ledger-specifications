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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3166
      (coe v0)
-- _.Value
d_Value_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_562 = erased
-- _.coin
d_coin_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
-- _.getValueʰ
d_getValue'688'_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_614 ~v0 = du_getValue'688'_614
du_getValue'688'_614 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410
-- _.inject
d_inject_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
-- _.netId
d_netId_676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_676 ~v0 = du_netId_676
du_netId_676 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_676
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- _.txOutHash
d_txOutHash_738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
      (coe v0)
-- _.GovActions.GovProposal
d_GovProposal_900 a0 = ()
-- _.GovActions.GovProposal.action
d_action_1006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876
d_action_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_964
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810
d_anchor_1008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_974
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  Integer
d_deposit_1010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_970
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  Maybe AgdaAny
d_policy_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_968
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  AgdaAny
d_prevAction_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_966
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_972
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_1116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3166
      (coe v0)
-- _.PParams.Emax
d_Emax_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_Emax_1220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_386
      (coe v0)
-- _.PParams.a
d_a_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_a_1222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_358 (coe v0)
-- _.PParams.a0
d_a0_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_390 (coe v0)
-- _.PParams.b
d_b_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_b_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_360 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMaxTermLength_1228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_402
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMinSize_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_400
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_coinsPerUTxOByte_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_collateralPercentage_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_costmdls_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_394
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_drepActivity_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_410
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_drepDeposit_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_408
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_398
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionDeposit_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_406
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionLifetime_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_404
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_keyDeposit_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_maxBlockExUnits_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_350
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxBlockSize_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_342
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxCollateralInputs_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_354
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxHeaderSize_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_346
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerBlock_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_378
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerTx_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_maxTxExUnits_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_348
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxTxSize_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxValSize_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_374
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_minUTxOValue_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_384
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_366
      (coe v0)
-- _.PParams.nopt
d_nopt_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_nopt_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_388
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_poolDeposit_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246
d_poolThresholds_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_396
      (coe v0)
-- _.PParams.prices
d_prices_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny
d_prices_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_372
      (coe v0)
-- _.PParams.pv
d_pv_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_356 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_382
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_380
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_368
      (coe v0)
-- _.Tx.body
d_body_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe v0)
-- _.Tx.isValid
d_isValid_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Bool
d_isValid_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
      (coe v0)
-- _.Tx.txAD
d_txAD_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Maybe AgdaAny
d_txAD_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3374
      (coe v0)
-- _.Tx.txsize
d_txsize_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_txsize_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
      (coe v0)
-- _.Tx.wits
d_wits_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
d_wits_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe Integer
d_currentTreasury_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3240
      (coe v0)
-- _.TxBody.mint
d_mint_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
d_mint_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3242
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [AgdaAny]
d_reqSignerHashes_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3244
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3246
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe AgdaAny
d_txADhash_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3230
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
d_txCerts_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3222
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_txDonation_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3232
      (coe v0)
-- _.TxBody.txFee
d_txFee_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_txFee_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950]
d_txGovProposals_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3236
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3234
      (coe v0)
-- _.TxBody.txId
d_txId_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
d_txId_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
      (coe v0)
-- _.TxBody.txIns
d_txIns_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe AgdaAny
d_txNetworkId_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3238
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.collectP2ScriptsWithContext
d_collectP2ScriptsWithContext_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectP2ScriptsWithContext_1822 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2622
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Utxo._.evalP2Scripts
d_evalP2Scripts_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalP2Scripts_1826 ~v0 v1 = du_evalP2Scripts_1826 v1
du_evalP2Scripts_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
du_evalP2Scripts_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2662
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.DCert
d_DCert_1920 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1940 v0 ~v1
  = du_DecEq'45'DepositPurpose_1940 v0
du_DecEq'45'DepositPurpose_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe v0))
-- Ledger.Conway.Specification.Utxo._.DepositPurpose
d_DepositPurpose_1946 a0 a1 = ()
-- Ledger.Conway.Specification.Utxo._.Deposits
d_Deposits_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  ()
d_Deposits_1948 = erased
-- Ledger.Conway.Specification.Utxo._.DepositsOf
d_DepositsOf_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1078
      (coe v0)
-- Ledger.Conway.Specification.Utxo._.HasDeposits
d_HasDeposits_2004 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Utxo._.HasDeposits.DepositsOf
d_DepositsOf_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1078
      (coe v0)
-- Ledger.Conway.Specification.Utxo.totExUnits
d_totExUnits_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  AgdaAny
d_totExUnits_2284 v0 ~v1 v2 = du_totExUnits_2284 v0 v2
du_totExUnits_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  AgdaAny
du_totExUnits_2284 v0 v1
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
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3348
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
            (coe v1)))
-- Ledger.Conway.Specification.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  Integer
d_utxoEntrySizeWithoutVal_2296 ~v0
  = du_utxoEntrySizeWithoutVal_2296
du_utxoEntrySizeWithoutVal_2296 :: Integer
du_utxoEntrySizeWithoutVal_2296 = coe (8 :: Integer)
-- Ledger.Conway.Specification.Utxo.utxoEntrySize
d_utxoEntrySize_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2298 v0 ~v1 v2 = du_utxoEntrySize_2298 v0 v2
du_utxoEntrySize_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2298 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410
            (coe v1)))
-- Ledger.Conway.Specification.Utxo.UTxOEnv
d_UTxOEnv_2302 a0 a1 = ()
data T_UTxOEnv_2302
  = C_constructor_2316 AgdaAny
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                       Integer
-- Ledger.Conway.Specification.Utxo.UTxOEnv.slot
d_slot_2310 :: T_UTxOEnv_2302 -> AgdaAny
d_slot_2310 v0
  = case coe v0 of
      C_constructor_2316 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOEnv.pparams
d_pparams_2312 ::
  T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2312 v0
  = case coe v0 of
      C_constructor_2316 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOEnv.treasury
d_treasury_2314 :: T_UTxOEnv_2302 -> Integer
d_treasury_2314 v0
  = case coe v0 of
      C_constructor_2316 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState
d_UTxOState_2318 a0 a1 = ()
data T_UTxOState_2318
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_2336 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Specification.Utxo.UTxOState.utxo
d_utxo_2328 ::
  T_UTxOState_2318 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2328 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2336 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.fees
d_fees_2330 :: T_UTxOState_2318 -> Integer
d_fees_2330 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2336 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.deposits
d_deposits_2332 ::
  T_UTxOState_2318 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2332 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2336 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.UTxOState.donations
d_donations_2334 :: T_UTxOState_2318 -> Integer
d_donations_2334 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_2336 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.HasUTxOState
d_HasUTxOState_2342 a0 a1 a2 a3 = ()
newtype T_HasUTxOState_2342
  = C_constructor_2352 (AgdaAny -> T_UTxOState_2318)
-- Ledger.Conway.Specification.Utxo.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2350 ::
  T_HasUTxOState_2342 -> AgdaAny -> T_UTxOState_2318
d_UTxOStateOf_2350 v0
  = case coe v0 of
      C_constructor_2352 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo._.UTxOStateOf
d_UTxOStateOf_2356 ::
  T_HasUTxOState_2342 -> AgdaAny -> T_UTxOState_2318
d_UTxOStateOf_2356 v0 = coe d_UTxOStateOf_2350 (coe v0)
-- Ledger.Conway.Specification.Utxo.HasPParams-UTxOEnv
d_HasPParams'45'UTxOEnv_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'UTxOEnv_2358 ~v0 ~v1
  = du_HasPParams'45'UTxOEnv_2358
du_HasPParams'45'UTxOEnv_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
du_HasPParams'45'UTxOEnv_2358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_428
      (coe (\ v0 -> d_pparams_2312 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3158
d_HasUTxO'45'UTxOState_2360 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2360
du_HasUTxO'45'UTxOState_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3158
du_HasUTxO'45'UTxOState_2360
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3168
      (coe (\ v0 -> d_utxo_2328 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasFee-UTxOState
d_HasFee'45'UTxOState_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2362 ~v0 ~v1 = du_HasFee'45'UTxOState_2362
du_HasFee'45'UTxOState_2362 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2362
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe (\ v0 -> d_fees_2330 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1070
d_HasDeposits'45'UTxOState_2364 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2364
du_HasDeposits'45'UTxOState_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1070
du_HasDeposits'45'UTxOState_2364
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1080
      (coe (\ v0 -> d_deposits_2332 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2366 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2366
du_HasDonations'45'UTxOState_2366 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2366
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe (\ v0 -> d_donations_2334 (coe v0)))
-- Ledger.Conway.Specification.Utxo.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2368 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2368
du_HasCast'45'UTxOEnv_2368 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2368
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
                                 (2302 :: Integer) (18240141987391769988 :: Integer)
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
                                    (2302 :: Integer) (18240141987391769988 :: Integer)
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
                                       (2302 :: Integer) (18240141987391769988 :: Integer)
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
         (coe C_constructor_2316))
-- Ledger.Conway.Specification.Utxo.HasCast-UTxOState
d_HasCast'45'UTxOState_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2370 ~v0 ~v1 = du_HasCast'45'UTxOState_2370
du_HasCast'45'UTxOState_2370 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2370
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
                                 (2318 :: Integer) (18240141987391769988 :: Integer)
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
                                    (2318 :: Integer) (18240141987391769988 :: Integer)
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
                                       (2318 :: Integer) (18240141987391769988 :: Integer)
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
                                       (1948 :: Integer) (18240141987391769988 :: Integer)
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
                                          (2318 :: Integer) (18240141987391769988 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''7512'_2336))
-- Ledger.Conway.Specification.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2372 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2372
  = C_UTXO'45'inductive_3368 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxo._._.outs
d_outs_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2382 ~v0 ~v1 v2 = du_outs_2382 v2
du_outs_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2382 v0
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
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
                 (coe v0))
              (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
         (coe v0))
-- Ledger.Conway.Specification.Utxo._._.balance
d_balance_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2388 v0 ~v1 v2 = du_balance_2388 v0 v2
du_balance_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2388 v0 v1
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
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
            (coe v0))
         (coe v1))
-- Ledger.Conway.Specification.Utxo._._.cbalance
d_cbalance_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2394 v0 ~v1 v2 = du_cbalance_2394 v0 v2
du_cbalance_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2394 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
         (coe v0))
      (coe du_balance_2388 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Utxo._._.refScriptsSize
d_refScriptsSize_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_refScriptsSize_2398 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.ListAction.d_sum_6
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased
         (MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2236
            (coe v1))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3434
            (coe v0) (coe v3) (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.minfee
d_minfee_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_minfee_2404 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2228
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_372
                  (coe v2))
               (coe du_totExUnits_2284 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Fees.d_scriptsCost_1796
               (coe v0) (coe v2)
               (coe d_refScriptsSize_2398 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_360 (coe v2)))
      (coe
         mulInt
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_358 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
            (coe v4)))
-- Ledger.Conway.Specification.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2412 v0 ~v1 = du_HasCoin'45'UTxO_2412 v0
du_HasCoin'45'UTxO_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2412 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe du_cbalance_2394 (coe v0))
-- Ledger.Conway.Specification.Utxo.certDeposit
d_certDeposit_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_2414 ~v0 ~v1 v2 v3 = du_certDeposit_2414 v2 v3
du_certDeposit_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_2414 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1224 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                      (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1228 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1058
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
                      (coe v1)))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1232 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
                      (coe v3))
                   (coe v4))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1238 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                      (coe v3))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
                      (coe v1)))
         _ -> coe v2)
-- Ledger.Conway.Specification.Utxo.certRefund
d_certRefund_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1054]
d_certRefund_2432 ~v0 ~v1 v2 = du_certRefund_2432 v2
du_certRefund_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1054]
du_certRefund_2432 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_444
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1226 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                   (coe v2))
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1234 v2 v3
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
                   (coe v2))
         _ -> coe v1)
-- Ledger.Conway.Specification.Utxo.ValidCertDeposits
d_ValidCertDeposits_2442 a0 a1 a2 a3 a4 = ()
data T_ValidCertDeposits_2442
  = C_'91''93'_2448 | C_delegate_2460 T_ValidCertDeposits_2442 |
    C_regpool_2468 T_ValidCertDeposits_2442 |
    C_regdrep_2478 T_ValidCertDeposits_2442 |
    C_reg_2486 T_ValidCertDeposits_2442 |
    C_dereg_2496 Integer
                 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_ValidCertDeposits_2442 |
    C_deregdrep_2504 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                     T_ValidCertDeposits_2442 |
    C_ccreghot_2512 T_ValidCertDeposits_2442 |
    C_retirepool_2520 T_ValidCertDeposits_2442
-- Ledger.Conway.Specification.Utxo.validCertDeposits?
d_validCertDeposits'63'_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validCertDeposits'63'_2528 v0 ~v1 v2 v3 v4
  = du_validCertDeposits'63'_2528 v0 v2 v3 v4
du_validCertDeposits'63'_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_validCertDeposits'63'_2528 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_2448))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1224 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_delegate_2460)
                    (coe
                       (\ v10 ->
                          case coe v10 of
                            C_delegate_2460 v16 -> coe v16
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2528 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                                   (coe v6))
                                (coe v9))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1226 v6 v7
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
                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                               (coe v0)))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
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
                                                      C_dereg_2496 v8 v12
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                         erased))
                                                   (coe
                                                      (\ v13 ->
                                                         case coe v13 of
                                                           C_dereg_2496 v16 v18 v19 v20 -> coe v20
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2528 (coe v0)
                                                      (coe v1)
                                                      (let v13
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
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
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
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
                                                      C_dereg_2496
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                                                                  (coe v6)))
                                                            v11))
                                                      (coe
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                         erased))
                                                   (coe
                                                      (\ v12 ->
                                                         case coe v12 of
                                                           C_dereg_2496 v15 v17 v18 v19 -> coe v19
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                   (coe
                                                      du_validCertDeposits'63'_2528 (coe v0)
                                                      (coe v1)
                                                      (let v12
                                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
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
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1228 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_regpool_2468)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_regpool_2468 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2528 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1058
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
                                   (coe v1)))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1230 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_retirepool_2520)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_retirepool_2520 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2528 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1232 v6 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_regdrep_2478)
                    (coe
                       (\ v9 ->
                          case coe v9 of
                            C_regdrep_2478 v14 -> coe v14
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2528 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
                                   (coe v6))
                                (coe v7))))
                       (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1234 v6 v7
               -> let v8
                        = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                            (coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                        (coe v0)))
                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
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
                                            (coe C_deregdrep_2504 v11)
                                            (coe
                                               (\ v12 ->
                                                  case coe v12 of
                                                    C_deregdrep_2504 v16 v17 -> coe v17
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               du_validCertDeposits'63'_2528 (coe v0) (coe v1)
                                               (let v12
                                                      = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1060
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
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1236 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_ccreghot_2512)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_ccreghot_2512 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2528 (coe v0) (coe v1) (coe v2) (coe v5))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1238 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe C_reg_2486)
                    (coe
                       (\ v8 ->
                          case coe v8 of
                            C_reg_2486 v12 -> coe v12
                            _ -> MAlonzo.RTE.mazUnreachableError))
                    (coe
                       du_validCertDeposits'63'_2528 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1056
                                   (coe v6))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
                                   (coe v1)))))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.Dec-ValidCertDeposits
d_Dec'45'ValidCertDeposits_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'ValidCertDeposits_2700 v0 ~v1 v2 v3 v4
  = du_Dec'45'ValidCertDeposits_2700 v0 v2 v3 v4
du_Dec'45'ValidCertDeposits_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'ValidCertDeposits_2700 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         du_validCertDeposits'63'_2528 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Utxo.updateCertDeposits
d_updateCertDeposits_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2702 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_2702 v0 v2 v3 v4
du_updateCertDeposits_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2702 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> let v6
                 = coe
                     du_updateCertDeposits_2702 (coe v0) (coe v1) (coe v5) (coe v3) in
           coe
             (case coe v4 of
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1224 v7 v8 v9 v10
                  -> coe
                       du_updateCertDeposits_2702 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v3 (coe du_certDeposit_2414 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1226 v7 v8
                  -> coe
                       du_updateCertDeposits_2702 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2432 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1228 v7 v8
                  -> coe
                       du_updateCertDeposits_2702 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v3 (coe du_certDeposit_2414 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1232 v7 v8 v9
                  -> coe
                       du_updateCertDeposits_2702 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v3 (coe du_certDeposit_2414 (coe v4) (coe v1)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1234 v7 v8
                  -> coe
                       du_updateCertDeposits_2702 (coe v0) (coe v1) (coe v5)
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
                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                   (coe v0))))
                          (coe v3) (coe du_certRefund_2432 (coe v4)))
                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1238 v7 v8
                  -> coe
                       du_updateCertDeposits_2702 (coe v0) (coe v1) (coe v5)
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          (coe
                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                (coe v0)))
                          v3 (coe du_certDeposit_2414 (coe v4) (coe v1)))
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.updateProposalDeposits
d_updateProposalDeposits_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2780 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_2780 v0 v2 v3 v4 v5
du_updateProposalDeposits_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2780 v0 v1 v2 v3 v4
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
             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                   (coe v0)))
             (coe
                du_updateProposalDeposits_2780 (coe v0) (coe v6) (coe v2) (coe v3)
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
                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1062
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.updateDeposits
d_updateDeposits_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2792 v0 ~v1 v2 v3 v4
  = du_updateDeposits_2792 v0 v2 v3 v4
du_updateDeposits_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2792 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_2702 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3222
         (coe v2))
      (coe
         du_updateProposalDeposits_2780 (coe v0)
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3236
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_406
            (coe v1))
         (coe v3))
-- Ledger.Conway.Specification.Utxo.proposalDepositsΔ
d_proposalDepositsΔ_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_proposalDepositsΔ_2840 v0 ~v1 v2 v3 v4
  = du_proposalDepositsΔ_2840 v0 v2 v3 v4
du_proposalDepositsΔ_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950] ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_proposalDepositsΔ_2840 v0 v1 v2 v3
  = coe
      du_updateProposalDeposits_2780 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
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
d_depositsChange_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2890 v0 ~v1 v2 v3 v4
  = du_depositsChange_2890 v0 v2 v3 v4
du_depositsChange_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2890 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__266
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
         (coe du_updateDeposits_2792 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
d_inInterval_2900 a0 a1 a2 a3 = ()
data T_inInterval_2900
  = C_both_2908 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2912 AgdaAny | C_upper_2916 AgdaAny | C_none_2918
-- Ledger.Conway.Specification.Utxo.Dec-inInterval
d_Dec'45'inInterval_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2920 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2920 v0 v2 v3
du_Dec'45'inInterval_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2920 v0 v1 v2
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
                                                                                    C_both_2908
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
                                                         (coe C_lower_2912 v9))
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
                                                         (coe C_upper_2916 v9))
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
                                 (coe C_none_2918))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_3022 v0 ~v1
  = du_HasCoin'45'UTxOState_3022 v0
du_HasCoin'45'UTxOState_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_3022 v0
  = coe
      MAlonzo.Code.Ledger.Prelude.HasCoin.C_constructor_20
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2394 (coe v0) (coe d_utxo_2328 (coe v1)))
                    (coe d_donations_2334 (coe v1)))
                 (coe d_fees_2330 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
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
                 (coe (\ v2 -> v2)) (coe d_deposits_2332 (coe v1)))))
-- Ledger.Conway.Specification.Utxo.coinPolicies
d_coinPolicies_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  [AgdaAny]
d_coinPolicies_3026 v0 ~v1 = du_coinPolicies_3026 v0
du_coinPolicies_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny]
du_coinPolicies_3026 v0
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
d_isAdaOnly_3028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  AgdaAny -> ()
d_isAdaOnly_3028 = erased
-- Ledger.Conway.Specification.Utxo.collateralCheck
d_collateralCheck_3032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_collateralCheck_3032 = erased
-- Ledger.Conway.Specification.Utxo._.balance′
d_balance'8242'_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'8242'_3094 v0 ~v1 ~v2 v3 v4
  = du_balance'8242'_3094 v0 v3 v4
du_balance'8242'_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'8242'_3094 v0 v1 v2
  = coe
      du_balance_2388 (coe v0)
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
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
               (coe v1))))
-- Ledger.Conway.Specification.Utxo._._.depositRefunds
d_depositRefunds_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_depositRefunds_3108 v0 ~v1 v2 v3 v4
  = du_depositRefunds_3108 v0 v2 v3 v4
du_depositRefunds_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
du_depositRefunds_3108 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_negPart_70
      (coe
         du_depositsChange_2890 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2332 (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.newDeposits
d_newDeposits_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_newDeposits_3116 v0 ~v1 v2 v3 v4
  = du_newDeposits_3116 v0 v2 v3 v4
du_newDeposits_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
du_newDeposits_3116 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Prelude.d_posPart_58
      (coe
         du_depositsChange_2890 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_2332 (coe v2)))
-- Ledger.Conway.Specification.Utxo._._.consumed
d_consumed_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
d_consumed_3124 v0 ~v1 v2 v3 v4 = du_consumed_3124 v0 v2 v3 v4
du_consumed_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
du_consumed_3124 v0 v1 v2 v3
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
               du_balance_2388 (coe v0)
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
                  (coe d_utxo_2328 (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                     (coe v3))))
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3242
               (coe v3)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v0))
            (coe du_depositRefunds_3108 (coe v0) (coe v1) (coe v2) (coe v3))))
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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
               (coe v3))))
-- Ledger.Conway.Specification.Utxo._._.produced
d_produced_3132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
d_produced_3132 v0 ~v1 v2 v3 v4 = du_produced_3132 v0 v2 v3 v4
du_produced_3132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  AgdaAny
du_produced_3132 v0 v1 v2 v3
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
            (coe du_balance_2388 (coe v0) (coe du_outs_2382 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                  (coe v0))
               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
                  (coe v3))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v0))
            (coe du_newDeposits_3116 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
            (coe v0))
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3232
            (coe v3)))
-- Ledger.Conway.Specification.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__3156 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__3156
  = C_Scripts'45'Yes_3212 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_3268 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Utxo._.isValid
d_isValid_3162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_186887 -> Bool
d_isValid_3162 ~v0 ~v1 v2 = du_isValid_3162 v2
du_isValid_3162 :: T_GeneralizeTel_186887 -> Bool
du_isValid_3162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
      (coe d_'46'generalizedField'45'tx_186877 (coe v0))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_186887 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_3166 ~v0 ~v1 v2 = du_body_3166 v2
du_body_3166 ::
  T_GeneralizeTel_186887 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
du_body_3166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe d_'46'generalizedField'45'tx_186877 (coe v0))
-- Ledger.Conway.Specification.Utxo._.txCerts
d_txCerts_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_186887 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
d_txCerts_3188 ~v0 ~v1 v2 = du_txCerts_3188 v2
du_txCerts_3188 ::
  T_GeneralizeTel_186887 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
du_txCerts_3188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_186877 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txDonation
d_txDonation_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_186887 -> Integer
d_txDonation_3190 ~v0 ~v1 v2 = du_txDonation_3190 v2
du_txDonation_3190 :: T_GeneralizeTel_186887 -> Integer
du_txDonation_3190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_186877 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txFee
d_txFee_3192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_186887 -> Integer
d_txFee_3192 ~v0 ~v1 v2 = du_txFee_3192 v2
du_txFee_3192 :: T_GeneralizeTel_186887 -> Integer
du_txFee_3192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_186877 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txIns
d_txIns_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_186887 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3200 ~v0 ~v1 v2 = du_txIns_3200 v2
du_txIns_3200 ::
  T_GeneralizeTel_186887 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_186877 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.isValid
d_isValid_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_194049 -> Bool
d_isValid_3218 ~v0 ~v1 v2 = du_isValid_3218 v2
du_isValid_3218 :: T_GeneralizeTel_194049 -> Bool
du_isValid_3218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
      (coe d_'46'generalizedField'45'tx_194039 (coe v0))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_194049 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_3222 ~v0 ~v1 v2 = du_body_3222 v2
du_body_3222 ::
  T_GeneralizeTel_194049 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
du_body_3222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe d_'46'generalizedField'45'tx_194039 (coe v0))
-- Ledger.Conway.Specification.Utxo._.collateralInputs
d_collateralInputs_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_194049 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_3230 ~v0 ~v1 v2 = du_collateralInputs_3230 v2
du_collateralInputs_3230 ::
  T_GeneralizeTel_194049 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralInputs_3230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_194039 (coe v0)))
-- Ledger.Conway.Specification.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_3270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_3270 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            du_Dec'45'ValidCertDeposits_2700 (coe v0)
            (coe d_pparams_2312 (coe v2)) (coe v5)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3222
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                  (coe v3))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2662
                  v1
                  (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2622
                     (coe v0) (coe v1) (coe d_pparams_2312 (coe v2)) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
                  (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
                  (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))))
-- Ledger.Conway.Specification.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_3272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_UTxOEnv_2302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_3272 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.du_evalP2Scripts_2662
               v1
               (MAlonzo.Code.Ledger.Conway.Specification.Script.Validation.d_collectP2ScriptsWithContext_2622
                  (coe v0) (coe v1) (coe d_pparams_2312 (coe v2)) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
               (coe v3)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
               (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Specification.Utxo._.body
d_body_3288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_3288 ~v0 ~v1 v2 = du_body_3288 v2
du_body_3288 ::
  T_GeneralizeTel_207457 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
du_body_3288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe d_'46'generalizedField'45'tx_207453 (coe v0))
-- Ledger.Conway.Specification.Utxo._.txsize
d_txsize_3290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> Integer
d_txsize_3290 ~v0 ~v1 v2 = du_txsize_3290 v2
du_txsize_3290 :: T_GeneralizeTel_207457 -> Integer
du_txsize_3290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
      (coe d_'46'generalizedField'45'tx_207453 (coe v0))
-- Ledger.Conway.Specification.Utxo._.wits
d_wits_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
d_wits_3292 ~v0 ~v1 v2 = du_wits_3292 v2
du_wits_3292 ::
  T_GeneralizeTel_207457 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
du_wits_3292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
      (coe d_'46'generalizedField'45'tx_207453 (coe v0))
-- Ledger.Conway.Specification.Utxo._.currentTreasury
d_currentTreasury_3298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> Maybe Integer
d_currentTreasury_3298 ~v0 ~v1 v2 = du_currentTreasury_3298 v2
du_currentTreasury_3298 :: T_GeneralizeTel_207457 -> Maybe Integer
du_currentTreasury_3298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.mint
d_mint_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> AgdaAny
d_mint_3300 ~v0 ~v1 v2 = du_mint_3300 v2
du_mint_3300 :: T_GeneralizeTel_207457 -> AgdaAny
du_mint_3300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.refInputs
d_refInputs_3302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_3302 ~v0 ~v1 v2 = du_refInputs_3302 v2
du_refInputs_3302 ::
  T_GeneralizeTel_207457 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_3302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txFee
d_txFee_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> Integer
d_txFee_3314 ~v0 ~v1 v2 = du_txFee_3314 v2
du_txFee_3314 :: T_GeneralizeTel_207457 -> Integer
du_txFee_3314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txIns
d_txIns_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3322 ~v0 ~v1 v2 = du_txIns_3322 v2
du_txIns_3322 ::
  T_GeneralizeTel_207457 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txIns_3322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txNetworkId
d_txNetworkId_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> Maybe AgdaAny
d_txNetworkId_3324 ~v0 ~v1 v2 = du_txNetworkId_3324 v2
du_txNetworkId_3324 :: T_GeneralizeTel_207457 -> Maybe AgdaAny
du_txNetworkId_3324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txOuts
d_txOuts_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3326 ~v0 ~v1 v2 = du_txOuts_3326 v2
du_txOuts_3326 ::
  T_GeneralizeTel_207457 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txOuts_3326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txVldt
d_txVldt_3328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3328 ~v0 ~v1 v2 = du_txVldt_3328 v2
du_txVldt_3328 ::
  T_GeneralizeTel_207457 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txVldt_3328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txWithdrawals
d_txWithdrawals_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3330 ~v0 ~v1 v2 = du_txWithdrawals_3330 v2
du_txWithdrawals_3330 ::
  T_GeneralizeTel_207457 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo._.txrdmrs
d_txrdmrs_3340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_GeneralizeTel_207457 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_3340 ~v0 ~v1 v2 = du_txrdmrs_3340 v2
du_txrdmrs_3340 ::
  T_GeneralizeTel_207457 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txrdmrs_3340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
         (coe d_'46'generalizedField'45'tx_207453 (coe v0)))
-- Ledger.Conway.Specification.Utxo.UTXO-premises
d_UTXO'45'premises_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216 ->
  T_UTxOEnv_2302 ->
  T_UTxOState_2318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_3414 v0 v1 v2 v3 v4
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
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                          (coe d_utxo_2328 (coe v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                        (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                           (coe v4)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                     du_Dec'45'inInterval_2920 (coe v0) (coe d_slot_2310 (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                           (coe v4))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                        (d_minfee_2404
                           (coe v0) (coe v1) (coe d_pparams_2312 (coe v2))
                           (coe d_utxo_2328 (coe v3)) (coe v4))
                        (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3348
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
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
                                       (coe d_utxo_2328 (coe v3))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                               (coe v5) (coe du_coinPolicies_3026 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                             (coe v0))
                                          (coe
                                             du_balance'8242'_3094 (coe v0) (coe v4)
                                             (coe d_utxo_2328 (coe v3)))))
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
                                                     du_balance'8242'_3094 (coe v0) (coe v4)
                                                     (coe d_utxo_2328 (coe v3))))))
                                       (coe du_coinPolicies_3026 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
                                             (coe d_pparams_2312 (coe v2))))
                                       (mulInt
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                                                (coe v0))
                                             (coe
                                                du_balance'8242'_3094 (coe v0) (coe v4)
                                                (coe d_utxo_2328 (coe v3))))
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                 du_consumed_3124 (coe v0) (coe d_pparams_2312 (coe v2)) (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                    (coe v4)))
                              (coe
                                 du_produced_3132 (coe v0) (coe d_pparams_2312 (coe v2)) (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3242
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                          (coe v4))))
                                 (coe (0 :: Integer)))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
                                       (coe v4))
                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
                                       (coe d_pparams_2312 (coe v2))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                       (d_refScriptsSize_2398
                                          (coe v0) (coe v1) (coe d_utxo_2328 (coe v3)) (coe v4))
                                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
                                          (coe d_pparams_2312 (coe v2))))
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
                                                              du_utxoEntrySize_2298 (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v5))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
                                                           (coe d_pparams_2312 (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410
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
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2230
                                                        v1
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
                                                        (coe d_pparams_2312 (coe v2)))))
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                               (coe v4)))))
                                                   (coe
                                                      MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                                                      (coe
                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3238
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3240
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
                                                               (coe v4)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                            (coe d_treasury_2314 (coe v2)))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))))))))))))))))
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_186875 ::
  T_GeneralizeTel_186887 -> T_UTxOEnv_2302
d_'46'generalizedField'45'Γ_186875 v0
  = case coe v0 of
      C_mkGeneralizeTel_186889 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_186877 ::
  T_GeneralizeTel_186887 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
d_'46'generalizedField'45'tx_186877 v0
  = case coe v0 of
      C_mkGeneralizeTel_186889 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_186879 ::
  T_GeneralizeTel_186887 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_186879 v0
  = case coe v0 of
      C_mkGeneralizeTel_186889 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_186881 ::
  T_GeneralizeTel_186887 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_186881 v0
  = case coe v0 of
      C_mkGeneralizeTel_186889 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_186883 ::
  T_GeneralizeTel_186887 -> Integer
d_'46'generalizedField'45'fees_186883 v0
  = case coe v0 of
      C_mkGeneralizeTel_186889 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_186885 ::
  T_GeneralizeTel_186887 -> Integer
d_'46'generalizedField'45'donations_186885 v0
  = case coe v0 of
      C_mkGeneralizeTel_186889 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_186887 a0 a1 = ()
data T_GeneralizeTel_186887
  = C_mkGeneralizeTel_186889 T_UTxOEnv_2302
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer Integer
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_194037 ::
  T_GeneralizeTel_194049 -> T_UTxOEnv_2302
d_'46'generalizedField'45'Γ_194037 v0
  = case coe v0 of
      C_mkGeneralizeTel_194051 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_194039 ::
  T_GeneralizeTel_194049 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
d_'46'generalizedField'45'tx_194039 v0
  = case coe v0 of
      C_mkGeneralizeTel_194051 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-utxo
d_'46'generalizedField'45'utxo_194041 ::
  T_GeneralizeTel_194049 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo_194041 v0
  = case coe v0 of
      C_mkGeneralizeTel_194051 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-fees
d_'46'generalizedField'45'fees_194043 ::
  T_GeneralizeTel_194049 -> Integer
d_'46'generalizedField'45'fees_194043 v0
  = case coe v0 of
      C_mkGeneralizeTel_194051 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-deposits
d_'46'generalizedField'45'deposits_194045 ::
  T_GeneralizeTel_194049 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits_194045 v0
  = case coe v0 of
      C_mkGeneralizeTel_194051 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-donations
d_'46'generalizedField'45'donations_194047 ::
  T_GeneralizeTel_194049 -> Integer
d_'46'generalizedField'45'donations_194047 v0
  = case coe v0 of
      C_mkGeneralizeTel_194051 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_194049 a0 a1 = ()
data T_GeneralizeTel_194049
  = C_mkGeneralizeTel_194051 T_UTxOEnv_2302
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Conway.Specification.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_207449 ::
  T_GeneralizeTel_207457 -> T_UTxOEnv_2302
d_'46'generalizedField'45'Γ_207449 v0
  = case coe v0 of
      C_mkGeneralizeTel_207459 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-s
d_'46'generalizedField'45's_207451 ::
  T_GeneralizeTel_207457 -> T_UTxOState_2318
d_'46'generalizedField'45's_207451 v0
  = case coe v0 of
      C_mkGeneralizeTel_207459 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_207453 ::
  T_GeneralizeTel_207457 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
d_'46'generalizedField'45'tx_207453 v0
  = case coe v0 of
      C_mkGeneralizeTel_207459 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_207455 ::
  T_GeneralizeTel_207457 -> T_UTxOState_2318
d_'46'generalizedField'45's''_207455 v0
  = case coe v0 of
      C_mkGeneralizeTel_207459 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Utxo.GeneralizeTel
d_GeneralizeTel_207457 a0 a1 = ()
data T_GeneralizeTel_207457
  = C_mkGeneralizeTel_207459 T_UTxOEnv_2302 T_UTxOState_2318
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354
                             T_UTxOState_2318
