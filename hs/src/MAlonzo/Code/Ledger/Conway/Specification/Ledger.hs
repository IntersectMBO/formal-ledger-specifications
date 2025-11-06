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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxow
import qualified MAlonzo.Code.Ledger.Core.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Credential
d_Credential_58 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_92 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_92 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
            (coe v0)))
-- _.GovActionState
d_GovActionState_176 a0 = ()
-- _.GovProposal
d_GovProposal_188 a0 = ()
-- _.GovVote
d_GovVote_196 a0 = ()
-- _.HasPParams
d_HasPParams_268 a0 a1 a2 = ()
-- _.HasUTxO
d_HasUTxO_282 a0 a1 a2 = ()
-- _.HasVoteDelegs
d_HasVoteDelegs_292 a0 a1 a2 = ()
-- _.PParams
d_PParams_370 a0 = ()
-- _.PParamsOf
d_PParamsOf_378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_PParamsOf_378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_432
      (coe v0)
-- _.ScriptHash
d_ScriptHash_436 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_436 = erased
-- _.Slot
d_Slot_486 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_486 = erased
-- _.UTxOOf
d_UTxOOf_528 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_528 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_UTxOOf_3254
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_552 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_552 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- _.epoch
d_epoch_586 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_586 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
         (coe v0))
-- _.GovActionState.action
d_action_816 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_816 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_818 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_expiresIn_818 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_820 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_prevAction_820 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_822 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_822 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- _.GovActionState.votes
d_votes_824 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918
d_votes_824 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_874 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_882 a0 = ()
-- _.GovActions.GovVote
d_GovVote_890 a0 = ()
-- _.GovActions.HasVoteDelegs
d_HasVoteDelegs_948 a0 a1 a2 = ()
-- _.GovActions.GovProposal.action
d_action_1016 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_1016 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_992
      (coe v0)
-- _.GovActions.GovProposal.anchor
d_anchor_1018 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1018 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- _.GovActions.GovProposal.deposit
d_deposit_1020 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1020 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- _.GovActions.GovProposal.policy
d_policy_1022 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe AgdaAny
d_policy_1022 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- _.GovActions.GovProposal.prevAction
d_prevAction_1024 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1024 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- _.GovActions.GovProposal.returnAddr
d_returnAddr_1026 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- _.GovActions.GovVote.anchor
d_anchor_1038 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_914
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1040 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gid_908
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1042 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_vote_1042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_vote_912
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1044 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_voter_1044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_910
      (coe v0)
-- _.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1082 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1082 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- _.HasPParams.PParamsOf
d_PParamsOf_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_PParamsOf_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_432
      (coe v0)
-- _.HasUTxO.UTxOOf
d_UTxOOf_1134 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1134 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_UTxOOf_3254
      (coe v0)
-- _.PParams.Emax
d_Emax_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_Emax_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- _.PParams.a
d_a_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_1228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- _.PParams.a0
d_a0_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- _.PParams.b
d_b_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_costmdls_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_drepActivity_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxBlockExUnits_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_maxTxExUnits_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- _.PParams.nopt
d_nopt_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- _.PParams.prices
d_prices_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny
d_prices_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- _.PParams.pv
d_pv_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1748 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1748 = erased
-- Ledger.Conway.Specification.Ledger._.CCHotKeysOf
d_CCHotKeysOf_1764 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1764 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1162
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_1780 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_1784 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
d_CertStateOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DRepsOf
d_DRepsOf_1800 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DStateOf
d_DStateOf_1806 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350
d_DStateOf_1806 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1438
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_1818 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1818 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1124
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.GStateOf
d_GStateOf_1830 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1382
d_GStateOf_1830 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1478
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys
d_HasCCHotKeys_1834 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_1840 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154
d_HasCCHotKeys'45'GState_1840 ~v0 ~v1
  = du_HasCCHotKeys'45'GState_1840
du_HasCCHotKeys'45'GState_1840 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154
du_HasCCHotKeys'45'GState_1840
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCCHotKeys'45'GState_1522
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1842 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1842 ~v0 ~v1 = du_HasCast'45'CertEnv_1842
du_HasCast'45'CertEnv_1842 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1842
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'CertEnv_1550
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_1854 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDReps
d_HasDReps_1860 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDReps-CertState
d_HasDReps'45'CertState_1864 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'CertState_1864 ~v0 ~v1
  = du_HasDReps'45'CertState_1864
du_HasDReps'45'CertState_1864 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170
du_HasDReps'45'CertState_1864
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDReps'45'CertState_1532
-- Ledger.Conway.Specification.Ledger._.HasDState
d_HasDState_1868 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_1872 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430
d_HasDState'45'CertState_1872 ~v0 ~v1
  = du_HasDState'45'CertState_1872
du_HasDState'45'CertState_1872 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430
du_HasDState'45'CertState_1872
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDState'45'CertState_1524
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_1874 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState
d_HasGState_1878 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_1882 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470
d_HasGState'45'CertState_1882 ~v0 ~v1
  = du_HasGState'45'CertState_1882
du_HasGState'45'CertState_1882 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470
du_HasGState'45'CertState_1882
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasGState'45'CertState_1528
-- Ledger.Conway.Specification.Ledger._.HasPState
d_HasPState_1886 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_1890 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450
d_HasPState'45'CertState_1890 ~v0 ~v1
  = du_HasPState'45'CertState_1890
du_HasPState'45'CertState_1890 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450
du_HasPState'45'CertState_1890
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPState'45'CertState_1526
-- Ledger.Conway.Specification.Ledger._.HasPools
d_HasPools_1892 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_1896 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
d_HasPools'45'CertState_1896 ~v0 ~v1
  = du_HasPools'45'CertState_1896
du_HasPools'45'CertState_1896 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
du_HasPools'45'CertState_1896
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPools'45'CertState_1536
-- Ledger.Conway.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_1910 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1218
d_HasRewards'45'CertState_1910 ~v0 ~v1
  = du_HasRewards'45'CertState_1910
du_HasRewards'45'CertState_1910 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasRewards_1218
du_HasRewards'45'CertState_1910
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasRewards'45'CertState_1530
-- Ledger.Conway.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_1928 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'DState_1928 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_1928
du_HasVoteDelegs'45'DState_1928 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
du_HasVoteDelegs'45'DState_1928
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasVoteDelegs'45'DState_1510
-- Ledger.Conway.Specification.Ledger._.PStateOf
d_PStateOf_1940 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
d_PStateOf_1940 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.PoolsOf
d_PoolsOf_1948 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1948 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1194
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2050 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350
d_dState_2050 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_dState_1402 (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2052 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1382
d_gState_2052 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_gState_1406 (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2054 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
d_pState_2054 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_pState_1404 (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_2108 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2108 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1162
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2112 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
d_CertStateOf_2112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDReps.DRepsOf
d_DRepsOf_2116 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2116 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_2120 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_DState_1350
d_DStateOf_2120 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1438
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2124 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2124 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1124
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_2128 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_GState_1382
d_GStateOf_2128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1478
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_2132 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
d_PStateOf_2132 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_2136 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1194
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_2196 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1110
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1114
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1112 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1116
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2264 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_2468 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2264 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_2278 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  ()
d_GovState_2278 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2452 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2460
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2282 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2282 ~v0 ~v1 = du_HasCast'45'GovEnv_2282
du_HasCast'45'GovEnv_2282 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_2506
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_2288 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2452 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2460
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.Tx
d_Tx_2442 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.TxBody
d_TxBody_2446 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.Tx.body
d_body_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174
d_body_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.Tx.isValid
d_isValid_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Bool
d_isValid_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2350
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.Tx.txAD
d_txAD_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Maybe AgdaAny
d_txAD_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2352
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.Tx.txsize
d_txsize_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Integer
d_txsize_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2348
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.Tx.wits
d_wits_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
d_wits_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.collateralInputs
d_collateralInputs_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_2216
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.currentTreasury
d_currentTreasury_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Maybe Integer
d_currentTreasury_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_2240
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.mint
d_mint_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  AgdaAny
d_mint_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2242
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.refInputs
d_refInputs_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2214
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.reqSignerHashes
d_reqSignerHashes_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [AgdaAny]
d_reqSignerHashes_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_2244
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Maybe AgdaAny
d_scriptIntegrityHash_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_2246
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txADhash
d_txADhash_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Maybe AgdaAny
d_txADhash_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_2230
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txCerts
d_txCerts_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290]
d_txCerts_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2222
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txDonation
d_txDonation_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Integer
d_txDonation_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_2232
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txFee
d_txFee_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Integer
d_txFee_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_2224
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txGovProposals
d_txGovProposals_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978]
d_txGovProposals_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2236
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txGovVotes
d_txGovVotes_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2234
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txId
d_txId_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  AgdaAny
d_txId_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2220
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txIns
d_txIns_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_2212
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txNetworkId
d_txNetworkId_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  Maybe AgdaAny
d_txNetworkId_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_2238
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txOuts
d_txOuts_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_2218
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txVldt
d_txVldt_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_2228
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.TxBody.txWithdrawals
d_txWithdrawals_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2226
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2536 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2536 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2536
du_HasCast'45'UTxOEnv_2536 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2476
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2544 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1116
d_HasDeposits'45'UTxOState_2544 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2544
du_HasDeposits'45'UTxOState_2544 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1116
du_HasDeposits'45'UTxOState_2544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2472
-- Ledger.Conway.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2546 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2546 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2546
du_HasDonations'45'UTxOState_2546 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2546
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2474
-- Ledger.Conway.Specification.Ledger._.HasFee-UTxOState
d_HasFee'45'UTxOState_2548 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFee'45'UTxOState_2548 ~v0 ~v1 = du_HasFee'45'UTxOState_2548
du_HasFee'45'UTxOState_2548 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFee'45'UTxOState_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2470
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2552 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246
d_HasUTxO'45'UTxOState_2552 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2552
du_HasUTxO'45'UTxOState_2552 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246
du_HasUTxO'45'UTxOState_2552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2468
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2554 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_2574 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_UTxOStateOf_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2458
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_UTxOStateOf_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2458
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2440
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_donations_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2442
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_fees_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2438 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2720 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2768 a0 a1 = ()
data T_LEnv_2768
  = C_constructor_2790 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
                       Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2780 :: T_LEnv_2768 -> AgdaAny
d_slot_2780 v0
  = case coe v0 of
      C_constructor_2790 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2782 :: T_LEnv_2768 -> Maybe AgdaAny
d_ppolicy_2782 v0
  = case coe v0 of
      C_constructor_2790 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2784 ::
  T_LEnv_2768 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2784 v0
  = case coe v0 of
      C_constructor_2790 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2786 ::
  T_LEnv_2768 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_enactState_2786 v0
  = case coe v0 of
      C_constructor_2790 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2788 :: T_LEnv_2768 -> Integer
d_treasury_2788 v0
  = case coe v0 of
      C_constructor_2790 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2792 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
d_HasPParams'45'LEnv_2792 ~v0 ~v1 = du_HasPParams'45'LEnv_2792
du_HasPParams'45'LEnv_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
du_HasPParams'45'LEnv_2792
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_434
      (coe (\ v0 -> d_pparams_2784 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2794 a0 a1 = ()
data T_LState_2794
  = C_'10214'_'44'_'44'_'10215''737'_2808 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2802 ::
  T_LState_2794 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2802 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2808 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2804 ::
  T_LState_2794 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2804 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2808 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2806 ::
  T_LState_2794 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
d_certState_2806 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2808 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2814 a0 a1 a2 a3 = ()
newtype T_HasLState_2814
  = C_constructor_2824 (AgdaAny -> T_LState_2794)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2822 :: T_HasLState_2814 -> AgdaAny -> T_LState_2794
d_LStateOf_2822 v0
  = case coe v0 of
      C_constructor_2824 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2828 :: T_HasLState_2814 -> AgdaAny -> T_LState_2794
d_LStateOf_2828 v0 = coe d_LStateOf_2822 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2830 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2450
d_HasUTxOState'45'LState_2830 ~v0 ~v1
  = du_HasUTxOState'45'LState_2830
du_HasUTxOState'45'LState_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2450
du_HasUTxOState'45'LState_2830
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2460
      (coe (\ v0 -> d_utxoSt_2802 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2832 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246
d_HasUTxO'45'LState_2832 ~v0 ~v1 = du_HasUTxO'45'LState_2832
du_HasUTxO'45'LState_2832 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246
du_HasUTxO'45'LState_2832
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.C_constructor_3256
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Transaction.d_UTxOOf_3254
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2468)
              (d_utxoSt_2802 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2834 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2452
d_HasGovState'45'LState_2834 ~v0 ~v1
  = du_HasGovState'45'LState_2834
du_HasGovState'45'LState_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2452
du_HasGovState'45'LState_2834
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2462
      (coe (\ v0 -> d_govSt_2804 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2836 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1490
d_HasCertState'45'LState_2836 ~v0 ~v1
  = du_HasCertState'45'LState_2836
du_HasCertState'45'LState_2836 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCertState_1490
du_HasCertState'45'LState_2836
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1500
      (coe (\ v0 -> d_certState_2806 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2838 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1116
d_HasDeposits'45'LState_2838 ~v0 ~v1
  = du_HasDeposits'45'LState_2838
du_HasDeposits'45'LState_2838 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDeposits_1116
du_HasDeposits'45'LState_2838
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1126
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_DepositsOf_1124
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2472)
              (d_utxoSt_2802 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPools-LState
d_HasPools'45'LState_2840 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
d_HasPools'45'LState_2840 ~v0 ~v1 = du_HasPools'45'LState_2840
du_HasPools'45'LState_2840 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPools_1186
du_HasPools'45'LState_2840
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1196
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_PoolsOf_1194
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPools'45'CertState_1536)
              (d_certState_2806 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGState-LState
d_HasGState'45'LState_2842 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470
d_HasGState'45'LState_2842 ~v0 ~v1 = du_HasGState'45'LState_2842
du_HasGState'45'LState_2842 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasGState_1470
du_HasGState'45'LState_2842
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1480
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1478
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasGState'45'CertState_1528)
              (d_certState_2806 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasDState-LState
d_HasDState'45'LState_2844 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430
d_HasDState'45'LState_2844 ~v0 ~v1 = du_HasDState'45'LState_2844
du_HasDState'45'LState_2844 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDState_1430
du_HasDState'45'LState_2844
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1440
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1438
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDState'45'CertState_1524)
              (d_certState_2806 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPState-LState
d_HasPState'45'LState_2846 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450
d_HasPState'45'LState_2846 ~v0 ~v1 = du_HasPState'45'LState_2846
du_HasPState'45'LState_2846 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasPState_1450
du_HasPState'45'LState_2846
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1460
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_PStateOf_1458
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasPState'45'CertState_1526)
              (d_certState_2806 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2848 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'LState_2848 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2848
du_HasVoteDelegs'45'LState_2848 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
du_HasVoteDelegs'45'LState_2848
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_constructor_958
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasVoteDelegs'45'DState_1510)
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_DStateOf_1438
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDState'45'CertState_1524)
                 (d_certState_2806 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDonations-LState
d_HasDonations'45'LState_2850 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LState_2850 ~v0 ~v1
  = du_HasDonations'45'LState_2850
du_HasDonations'45'LState_2850 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LState_2850
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2474)
              (d_utxoSt_2802 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasFees-LState
d_HasFees'45'LState_2852 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'LState_2852 ~v0 ~v1 = du_HasFees'45'LState_2852
du_HasFees'45'LState_2852 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'LState_2852
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_50
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasFee'45'UTxOState_2470)
              (d_utxoSt_2802 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCCHotKeys-LState
d_HasCCHotKeys'45'LState_2854 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154
d_HasCCHotKeys'45'LState_2854 ~v0 ~v1
  = du_HasCCHotKeys'45'LState_2854
du_HasCCHotKeys'45'LState_2854 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasCCHotKeys_1154
du_HasCCHotKeys'45'LState_2854
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1164
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_CCHotKeysOf_1162
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCCHotKeys'45'GState_1522)
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.d_GStateOf_1478
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasGState'45'CertState_1528)
                 (d_certState_2806 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDReps-LState
d_HasDReps'45'LState_2856 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'LState_2856 ~v0 ~v1 = du_HasDReps'45'LState_2856
du_HasDReps'45'LState_2856 ::
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_HasDReps_1170
du_HasDReps'45'LState_2856
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.C_constructor_1180
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Core.Specification.Certs.d_DRepsOf_1178
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasDReps'45'CertState_1532)
              (d_certState_2806 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2858 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2858 ~v0 ~v1 = du_HasCast'45'LEnv_2858
du_HasCast'45'LEnv_2858 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2858
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
                                 (2768 :: Integer) (11007941034284287304 :: Integer)
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
                                 (486 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2768 :: Integer) (11007941034284287304 :: Integer)
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
                                                (436 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2768 :: Integer) (11007941034284287304 :: Integer)
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
                                       (370 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2768 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2196 :: Integer) (11007941034284287304 :: Integer)
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
                                             (2768 :: Integer) (11007941034284287304 :: Integer)
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
         (coe C_constructor_2790))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2860 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2860 ~v0 ~v1 = du_HasCast'45'LState_2860
du_HasCast'45'LState_2860 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2860
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
                                 (2794 :: Integer) (11007941034284287304 :: Integer)
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
                                 (2574 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2794 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2278 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2794 :: Integer) (11007941034284287304 :: Integer)
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
                                       (1780 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2808))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2862 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2862 ~v0 ~v1 v2 = du_txgov_2862 v2
du_txgov_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2862 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_2236
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2234
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2908 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2908 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2908 v0 v2 v3
du_rmOrphanDRepVotes_2908 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2908 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_2922 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2918 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_2918 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2922 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006
d_go_2922 v0 ~v1 v2 ~v3 v4 = du_go_2922 v0 v2 v4
du_go_2922 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006
du_go_2922 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_constructor_1028
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.C_constructor_932
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCC_926
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
               (coe v2)))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1400
            (\ v3 ->
               coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                 (coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1650
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                    erased
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                             (coe v0)))))
                 (coe v3)
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_586
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Certs.d_dreps_1388
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Certs.d_gState_1406
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvDRep_928
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvSPO_930
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1020
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1022
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_1026
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_2926 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2926 ~v0 ~v1 v2 v3 = du_allColdCreds_2926 v2 v3
du_allColdCreds_2926 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2926 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1516
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1148
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1108 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_536
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1516
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_proposedCC_1224
                 (coe
                    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_456
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2968 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2968
  = C_LEDGER'45'V_3010 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_3012 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txCerts
d_txCerts_2988 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_22803 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290]
d_txCerts_2988 ~v0 ~v1 v2 = du_txCerts_2988 v2
du_txCerts_2988 ::
  T_GeneralizeTel_22803 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290]
du_txCerts_2988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_22779 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txGovVotes
d_txGovVotes_2996 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_22803 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2996 ~v0 ~v1 v2 = du_txGovVotes_2996 v2
du_txGovVotes_2996 ::
  T_GeneralizeTel_22803 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
du_txGovVotes_2996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_22779 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txId
d_txId_2998 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_22803 -> AgdaAny
d_txId_2998 ~v0 ~v1 v2 = du_txId_2998 v2
du_txId_2998 :: T_GeneralizeTel_22803 -> AgdaAny
du_txId_2998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_22779 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txWithdrawals
d_txWithdrawals_3008 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_22803 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3008 ~v0 ~v1 v2 = du_txWithdrawals_3008 v2
du_txWithdrawals_3008 ::
  T_GeneralizeTel_22803 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_3008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_22779 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3030 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_LEnv_2768 ->
  T_LState_2794 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332] ->
  T_LState_2794 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__3030 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_22779 ::
  T_GeneralizeTel_22803 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
d_'46'generalizedField'45'tx_22779 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_22781 ::
  T_GeneralizeTel_22803 -> AgdaAny
d_'46'generalizedField'45'slot_22781 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_22783 ::
  T_GeneralizeTel_22803 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_'46'generalizedField'45'pp_22783 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_22785 ::
  T_GeneralizeTel_22803 -> Integer
d_'46'generalizedField'45'treasury_22785 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_22787 ::
  T_GeneralizeTel_22803 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_'46'generalizedField'45'utxoSt_22787 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_22789 ::
  T_GeneralizeTel_22803 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_'46'generalizedField'45'utxoSt''_22789 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_22791 ::
  T_GeneralizeTel_22803 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_22791 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_22793 ::
  T_GeneralizeTel_22803 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_'46'generalizedField'45'enactState_22793 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_22795 ::
  T_GeneralizeTel_22803 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
d_'46'generalizedField'45'certState_22795 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_22797 ::
  T_GeneralizeTel_22803 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
d_'46'generalizedField'45'certState''_22797 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_22799 ::
  T_GeneralizeTel_22803 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_22799 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_22801 ::
  T_GeneralizeTel_22803 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_22801 v0
  = case coe v0 of
      C_mkGeneralizeTel_22805 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_22803 a0 a1 = ()
data T_GeneralizeTel_22803
  = C_mkGeneralizeTel_22805 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
                            MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
                            MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
