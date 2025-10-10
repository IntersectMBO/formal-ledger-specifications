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

module MAlonzo.Code.Ledger.Conway.Specification.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_58 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_94 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
            (coe v0)))
-- _.GovActionState
d_GovActionState_178 a0 = ()
-- _.GovProposal
d_GovProposal_190 a0 = ()
-- _.GovVote
d_GovVote_200 a0 = ()
-- _.HasPParams
d_HasPParams_282 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_302 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_306 a0 a1 a2 = ()
-- _.PParams
d_PParams_388 a0 = ()
-- _.PParamsOf
d_PParamsOf_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
      (coe v0)
-- _.ScriptHash
d_ScriptHash_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_450 = erased
-- _.Slot
d_Slot_500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_500 = erased
-- _.Tx
d_Tx_528 a0 = ()
-- _.TxBody
d_TxBody_532 a0 = ()
-- _.UTxOOf
d_UTxOOf_554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3204
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_854
      (coe v0)
-- _.epoch
d_epoch_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.GovActionState.action
d_action_842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880
d_action_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1018
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  AgdaAny
d_expiresIn_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1016
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  AgdaAny
d_prevAction_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1020
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1014
      (coe v0)
-- _.GovActionState.votes
d_votes_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_984
d_votes_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1012
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_900 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_908 a0 = ()
-- _.GovActions.GovVote
d_GovVote_916 a0 = ()
-- _.GovActions.HasVoteDelegs
d_HasVoteDelegs_954 a0 a1 a2 = ()
-- _.GovActions.GovProposal.action
d_action_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_880
d_action_1016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_970
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_1018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_980
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956 ->
  Integer
d_deposit_1020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_976
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956 ->
  Maybe AgdaAny
d_policy_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_974
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956 ->
  AgdaAny
d_prevAction_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_972
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_978
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814
d_anchor_1038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_952
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_946
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_928
d_vote_1042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_950
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_790
d_voter_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_948
      (coe v0)
-- _.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_854
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_PParamsOf_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_428
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3196 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3204
      (coe v0)
-- _.PParams.Emax
d_Emax_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_Emax_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_388
      (coe v0)
-- _.PParams.a
d_a_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_a_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_360 (coe v0)
-- _.PParams.a0
d_a0_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_392 (coe v0)
-- _.PParams.b
d_b_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_b_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_362 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMaxTermLength_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_404
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMinSize_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_402
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_coinsPerUTxOByte_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_372
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_collateralPercentage_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_394
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_costmdls_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_396
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_drepActivity_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_drepDeposit_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_410
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204
d_drepThresholds_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionDeposit_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionLifetime_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_406
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_keyDeposit_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxBlockExUnits_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_352
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxBlockSize_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_344
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxCollateralInputs_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_356
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxHeaderSize_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerBlock_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_380
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerTx_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_378
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxTxExUnits_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_350
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxTxSize_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_346
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxValSize_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_354
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_376
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_minUTxOValue_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_386
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_368
      (coe v0)
-- _.PParams.nopt
d_nopt_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_nopt_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_390
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_poolDeposit_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248
d_poolThresholds_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
      (coe v0)
-- _.PParams.prices
d_prices_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_prices_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_374
      (coe v0)
-- _.PParams.pv
d_pv_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_358 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_384
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_382
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
      (coe v0)
-- _.Tx.body
d_body_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212
d_body_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
      (coe v0)
-- _.Tx.isValid
d_isValid_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Bool
d_isValid_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3410
      (coe v0)
-- _.Tx.txAD
d_txAD_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Maybe AgdaAny
d_txAD_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3412
      (coe v0)
-- _.Tx.txsize
d_txsize_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Integer
d_txsize_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3408
      (coe v0)
-- _.Tx.wits
d_wits_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3370
d_wits_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
      (coe v0)
-- _.TxBody.collateralInputs
d_collateralInputs_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3254
      (coe v0)
-- _.TxBody.currentTreasury
d_currentTreasury_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  Maybe Integer
d_currentTreasury_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3278
      (coe v0)
-- _.TxBody.mint
d_mint_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  AgdaAny
d_mint_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3280
      (coe v0)
-- _.TxBody.refInputs
d_refInputs_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3252
      (coe v0)
-- _.TxBody.reqSignerHashes
d_reqSignerHashes_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [AgdaAny]
d_reqSignerHashes_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3282
      (coe v0)
-- _.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  Maybe AgdaAny
d_scriptIntegrityHash_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3284
      (coe v0)
-- _.TxBody.txADhash
d_txADhash_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  Maybe AgdaAny
d_txADhash_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3268
      (coe v0)
-- _.TxBody.txCerts
d_txCerts_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
d_txCerts_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3260
      (coe v0)
-- _.TxBody.txDonation
d_txDonation_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  Integer
d_txDonation_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3270
      (coe v0)
-- _.TxBody.txFee
d_txFee_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  Integer
d_txFee_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3262
      (coe v0)
-- _.TxBody.txGovProposals
d_txGovProposals_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956]
d_txGovProposals_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3274
      (coe v0)
-- _.TxBody.txGovVotes
d_txGovVotes_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_txGovVotes_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3272
      (coe v0)
-- _.TxBody.txId
d_txId_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  AgdaAny
d_txId_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3258
      (coe v0)
-- _.TxBody.txIns
d_txIns_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3250
      (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  Maybe AgdaAny
d_txNetworkId_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3276
      (coe v0)
-- _.TxBody.txOuts
d_txOuts_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3256
      (coe v0)
-- _.TxBody.txVldt
d_txVldt_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3266
      (coe v0)
-- _.TxBody.txWithdrawals
d_txWithdrawals_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3264
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_1834 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1066 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1068
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1072
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1070 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1074
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_2466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1902 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  ()
d_GovState_1916 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2450 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2458
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1920 ~v0 ~v1 = du_HasCast'45'GovEnv_1920
du_HasCast'45'GovEnv_1920 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1920
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_2504
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_1926 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2450 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2458
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2050 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2050
du_HasCast'45'UTxOEnv_2050 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2402
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078
d_HasDeposits'45'UTxOState_2058 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2058
du_HasDeposits'45'UTxOState_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078
du_HasDeposits'45'UTxOState_2058
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2398
-- Ledger.Conway.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2060 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2060
du_HasDonations'45'UTxOState_2060 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2060
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2400
-- Ledger.Conway.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2062 ~v0 ~v1 = du_HasFee'45'UTxOState_2062
du_HasFee'45'UTxOState_2062 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2062
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2396
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3196
d_HasUTxO'45'UTxOState_2066 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2066
du_HasUTxO'45'UTxOState_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3196
du_HasUTxO'45'UTxOState_2066
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2394
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2068 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_2088 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2376 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_UTxOStateOf_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2384
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2376 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_UTxOStateOf_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2384
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2366
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  Integer
d_donations_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2368
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  Integer
d_fees_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2364 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2234 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2284 = erased
-- Ledger.Conway.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1124
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_2316 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_CertStateOf_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1456
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DRepsOf
d_DRepsOf_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DStateOf
d_DStateOf_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1388 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
d_DStateOf_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1396
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1086
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.GStateOf
d_GStateOf_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1428 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
d_GStateOf_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1436
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_2370 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1116
d_HasCCHotKeys'45'GState_2376 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_2376
du_HasCCHotKeys'45'GState_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1116
du_HasCCHotKeys'45'GState_2376
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1480
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2378 ~v0 ~v1 = du_HasCast'45'CertEnv_2378
du_HasCast'45'CertEnv_2378 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1508
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_2390 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDReps
d_HasDReps_2396 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
d_HasDReps'45'CertState_2400 ~v0 ~v1
  = du_HasDReps'45'CertState_2400
du_HasDReps'45'CertState_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
du_HasDReps'45'CertState_2400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1490
-- Ledger.Conway.Specification.Ledger._.HasDState
d_HasDState_2404 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1388
d_HasDState'45'CertState_2408 ~v0 ~v1
  = du_HasDState'45'CertState_2408
du_HasDState'45'CertState_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1388
du_HasDState'45'CertState_2408
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1482
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2410 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState
d_HasGState_2414 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1428
d_HasGState'45'CertState_2418 ~v0 ~v1
  = du_HasGState'45'CertState_2418
du_HasGState'45'CertState_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1428
du_HasGState'45'CertState_2418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1486
-- Ledger.Conway.Specification.Ledger._.HasPState
d_HasPState_2422 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
d_HasPState'45'CertState_2426 ~v0 ~v1
  = du_HasPState'45'CertState_2426
du_HasPState'45'CertState_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
du_HasPState'45'CertState_2426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1484
-- Ledger.Conway.Specification.Ledger._.HasPools
d_HasPools_2428 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
d_HasPools'45'CertState_2432 ~v0 ~v1
  = du_HasPools'45'CertState_2432
du_HasPools'45'CertState_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
du_HasPools'45'CertState_2432
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1494
-- Ledger.Conway.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180
d_HasRewards'45'CertState_2446 ~v0 ~v1
  = du_HasRewards'45'CertState_2446
du_HasRewards'45'CertState_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1180
du_HasRewards'45'CertState_2446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1488
-- Ledger.Conway.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
d_HasVoteDelegs'45'DState_2464 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_2464
du_HasVoteDelegs'45'DState_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
du_HasVoteDelegs'45'DState_2464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1468
-- Ledger.Conway.Specification.Ledger._.PStateOf
d_PStateOf_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_PStateOf_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1416
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.PoolsOf
d_PoolsOf_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1156
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
d_dState_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1360
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
d_gState_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1364
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1362
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1124
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_CertStateOf_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1456
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDReps.DRepsOf
d_DRepsOf_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1388 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
d_DStateOf_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1396
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1086
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1428 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
d_GStateOf_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1436
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_PStateOf_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1416
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1156
      (coe v0)
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2706 a0 a1 = ()
data T_LEnv_2706
  = C_constructor_2728 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
                       Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2718 :: T_LEnv_2706 -> AgdaAny
d_slot_2718 v0
  = case coe v0 of
      C_constructor_2728 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2720 :: T_LEnv_2706 -> Maybe AgdaAny
d_ppolicy_2720 v0
  = case coe v0 of
      C_constructor_2728 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2722 ::
  T_LEnv_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2722 v0
  = case coe v0 of
      C_constructor_2728 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2724 ::
  T_LEnv_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_enactState_2724 v0
  = case coe v0 of
      C_constructor_2728 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2726 :: T_LEnv_2706 -> Integer
d_treasury_2726 v0
  = case coe v0 of
      C_constructor_2728 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
d_HasPParams'45'LEnv_2730 ~v0 ~v1 = du_HasPParams'45'LEnv_2730
du_HasPParams'45'LEnv_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_420
du_HasPParams'45'LEnv_2730
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_430
      (coe (\ v0 -> d_pparams_2722 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2732 a0 a1 = ()
data T_LState_2732
  = C_'10214'_'44'_'44'_'10215''737'_2746 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2740 ::
  T_LState_2732 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2740 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2746 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2742 ::
  T_LState_2732 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2742 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2746 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2744 ::
  T_LState_2732 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_certState_2744 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2746 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2752 a0 a1 a2 a3 = ()
newtype T_HasLState_2752
  = C_constructor_2762 (AgdaAny -> T_LState_2732)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2760 :: T_HasLState_2752 -> AgdaAny -> T_LState_2732
d_LStateOf_2760 v0
  = case coe v0 of
      C_constructor_2762 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2766 :: T_HasLState_2752 -> AgdaAny -> T_LState_2732
d_LStateOf_2766 v0 = coe d_LStateOf_2760 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2376
d_HasUTxOState'45'LState_2768 ~v0 ~v1
  = du_HasUTxOState'45'LState_2768
du_HasUTxOState'45'LState_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2376
du_HasUTxOState'45'LState_2768
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2386
      (coe (\ v0 -> d_utxoSt_2740 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3196
d_HasUTxO'45'LState_2770 ~v0 ~v1 = du_HasUTxO'45'LState_2770
du_HasUTxO'45'LState_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3196
du_HasUTxO'45'LState_2770
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3206
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2394)
              (d_utxoSt_2740 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2450
d_HasGovState'45'LState_2772 ~v0 ~v1
  = du_HasGovState'45'LState_2772
du_HasGovState'45'LState_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2450
du_HasGovState'45'LState_2772
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2460
      (coe (\ v0 -> d_govSt_2742 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448
d_HasCertState'45'LState_2774 ~v0 ~v1
  = du_HasCertState'45'LState_2774
du_HasCertState'45'LState_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1448
du_HasCertState'45'LState_2774
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1458
      (coe (\ v0 -> d_certState_2744 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078
d_HasDeposits'45'LState_2776 ~v0 ~v1
  = du_HasDeposits'45'LState_2776
du_HasDeposits'45'LState_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1078
du_HasDeposits'45'LState_2776
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1088
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1086
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2398)
              (d_utxoSt_2740 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPools-LState
d_HasPools'45'LState_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
d_HasPools'45'LState_2778 ~v0 ~v1 = du_HasPools'45'LState_2778
du_HasPools'45'LState_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
du_HasPools'45'LState_2778
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1158
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1156
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1494)
              (d_certState_2744 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGState-LState
d_HasGState'45'LState_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1428
d_HasGState'45'LState_2780 ~v0 ~v1 = du_HasGState'45'LState_2780
du_HasGState'45'LState_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1428
du_HasGState'45'LState_2780
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1438
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1436
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1486)
              (d_certState_2744 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasDState-LState
d_HasDState'45'LState_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1388
d_HasDState'45'LState_2782 ~v0 ~v1 = du_HasDState'45'LState_2782
du_HasDState'45'LState_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1388
du_HasDState'45'LState_2782
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1398
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1396
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1482)
              (d_certState_2744 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPState-LState
d_HasPState'45'LState_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
d_HasPState'45'LState_2784 ~v0 ~v1 = du_HasPState'45'LState_2784
du_HasPState'45'LState_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1408
du_HasPState'45'LState_2784
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1418
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1416
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1484)
              (d_certState_2744 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
d_HasVoteDelegs'45'LState_2786 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2786
du_HasVoteDelegs'45'LState_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_846
du_HasVoteDelegs'45'LState_2786
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_856
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_854
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1468)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1396
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1482)
                 (d_certState_2744 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDonations-LState
d_HasDonations'45'LState_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LState_2788 ~v0 ~v1
  = du_HasDonations'45'LState_2788
du_HasDonations'45'LState_2788 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LState_2788
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2400)
              (d_utxoSt_2740 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasFees-LState
d_HasFees'45'LState_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LState_2790 ~v0 ~v1 = du_HasFees'45'LState_2790
du_HasFees'45'LState_2790 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LState_2790
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2396)
              (d_utxoSt_2740 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCCHotKeys-LState
d_HasCCHotKeys'45'LState_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1116
d_HasCCHotKeys'45'LState_2792 ~v0 ~v1
  = du_HasCCHotKeys'45'LState_2792
du_HasCCHotKeys'45'LState_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1116
du_HasCCHotKeys'45'LState_2792
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1126
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1124
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1480)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1436
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1486)
                 (d_certState_2744 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDReps-LState
d_HasDReps'45'LState_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
d_HasDReps'45'LState_2794 ~v0 ~v1 = du_HasDReps'45'LState_2794
du_HasDReps'45'LState_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1132
du_HasDReps'45'LState_2794
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1142
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1490)
              (d_certState_2744 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2796 ~v0 ~v1 = du_HasCast'45'LEnv_2796
du_HasCast'45'LEnv_2796 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2796
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
                                 (2706 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger.LEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (500 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2706 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger.LEnv"
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
                                    (10 :: Integer) (15412666033012224255 :: Integer)
                                    "Agda.Builtin.Maybe.Maybe"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (20 :: Integer) (10880583612240331187 :: Integer)
                                             "Agda.Primitive.lzero"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (450 :: Integer) (11007941034284287304 :: Integer)
                                                "_.ScriptHash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
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
                                       (2706 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger.LEnv"
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
                                       (388 :: Integer) (11007941034284287304 :: Integer)
                                       "_.PParams"
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
                                          (2706 :: Integer) (11007941034284287304 :: Integer)
                                          "Ledger.Conway.Specification.Ledger.LEnv"
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
                                          (1834 :: Integer) (11007941034284287304 :: Integer)
                                          "Ledger.Conway.Specification.Ledger._.EnactState"
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
                                             (2706 :: Integer) (11007941034284287304 :: Integer)
                                             "Ledger.Conway.Specification.Ledger.LEnv"
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
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_constructor_2728))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2798 ~v0 ~v1 = du_HasCast'45'LState_2798
du_HasCast'45'LState_2798 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2798
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
                                 (2732 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2088 :: Integer) (11007941034284287304 :: Integer)
                                 "Ledger.Conway.Specification.Ledger._.UTxOState"
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
                                    (2732 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger.LState"
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
                                    (1916 :: Integer) (11007941034284287304 :: Integer)
                                    "Ledger.Conway.Specification.Ledger._.GovState"
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
                                       (2732 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger.LState"
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
                                       (2316 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2746))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2800 ~v0 ~v1 v2 = du_txgov_2800 v2
du_txgov_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2800 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3274
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3272
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2846 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2846 v0 v2 v3
du_rmOrphanDRepVotes_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2846 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_2860 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_2856 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000
d_go_2860 v0 ~v1 v2 ~v3 v4 = du_go_2860 v0 v2 v4
du_go_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1000
du_go_2860 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1022
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_998
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_992
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1012
               (coe v2)))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1262
            (\ v3 ->
               coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                             (coe v0)))))
                 (coe v3)
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_580
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1346
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1364
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_994
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1012
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_996
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1012
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1014
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1016
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1018
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1020
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2864 ~v0 ~v1 v2 v3 = du_allColdCreds_2864 v2 v3
du_allColdCreds_2864 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2864 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1106
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1066 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1152
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1018
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_430
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2906 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2906
  = C_LEDGER'45'V_2948 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2950 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txCerts
d_txCerts_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_22419 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
d_txCerts_2926 ~v0 ~v1 v2 = du_txCerts_2926 v2
du_txCerts_2926 ::
  T_GeneralizeTel_22419 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
du_txCerts_2926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3260
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_22395 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txGovVotes
d_txGovVotes_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_22419 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_txGovVotes_2934 ~v0 ~v1 v2 = du_txGovVotes_2934 v2
du_txGovVotes_2934 ::
  T_GeneralizeTel_22419 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
du_txGovVotes_2934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_22395 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txId
d_txId_2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_22419 -> AgdaAny
d_txId_2936 ~v0 ~v1 v2 = du_txId_2936 v2
du_txId_2936 :: T_GeneralizeTel_22419 -> AgdaAny
du_txId_2936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3258
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_22395 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txWithdrawals
d_txWithdrawals_2946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_22419 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2946 ~v0 ~v1 v2 = du_txWithdrawals_2946 v2
du_txWithdrawals_2946 ::
  T_GeneralizeTel_22419 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_22395 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_LEnv_2706 ->
  T_LState_2732 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392] ->
  T_LState_2732 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2968 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_22395 ::
  T_GeneralizeTel_22419 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
d_'46'generalizedField'45'tx_22395 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_22397 ::
  T_GeneralizeTel_22419 -> AgdaAny
d_'46'generalizedField'45'slot_22397 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_22399 ::
  T_GeneralizeTel_22419 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_'46'generalizedField'45'pp_22399 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_22401 ::
  T_GeneralizeTel_22419 -> Integer
d_'46'generalizedField'45'treasury_22401 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_22403 ::
  T_GeneralizeTel_22419 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_'46'generalizedField'45'utxoSt_22403 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_22405 ::
  T_GeneralizeTel_22419 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_'46'generalizedField'45'utxoSt''_22405 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_22407 ::
  T_GeneralizeTel_22419 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_22407 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_22409 ::
  T_GeneralizeTel_22419 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_'46'generalizedField'45'enactState_22409 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_22411 ::
  T_GeneralizeTel_22419 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_'46'generalizedField'45'certState_22411 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_22413 ::
  T_GeneralizeTel_22419 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_'46'generalizedField'45'certState''_22413 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_22415 ::
  T_GeneralizeTel_22419 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_22415 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_22417 ::
  T_GeneralizeTel_22419 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_22417 v0
  = case coe v0 of
      C_mkGeneralizeTel_22421 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_22419 a0 a1 = ()
data T_GeneralizeTel_22419
  = C_mkGeneralizeTel_22421 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
