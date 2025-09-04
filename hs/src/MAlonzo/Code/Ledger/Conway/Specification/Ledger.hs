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
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
-- _.UTxOOf
d_UTxOOf_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3176
      (coe v0)
-- _.VoteDelegsOf
d_VoteDelegsOf_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_848
      (coe v0)
-- _.epoch
d_epoch_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_598 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
         (coe v0))
-- _.GovActionState.action
d_action_832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_874
d_action_832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1010
      (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  AgdaAny
d_expiresIn_834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1008
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  AgdaAny
d_prevAction_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1012
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1006
      (coe v0)
-- _.GovActionState.votes
d_votes_840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_976
d_votes_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1004
      (coe v0)
-- _.GovActions.GovActionState
d_GovActionState_890 a0 = ()
-- _.GovActions.GovProposal
d_GovProposal_898 a0 = ()
-- _.GovActions.GovVote
d_GovVote_906 a0 = ()
-- _.GovActions.HasVoteDelegs
d_HasVoteDelegs_944 a0 a1 a2 = ()
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
-- _.GovActions.GovVote.anchor
d_anchor_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_808
d_anchor_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_944
      (coe v0)
-- _.GovActions.GovVote.gid
d_gid_1026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_938
      (coe v0)
-- _.GovActions.GovVote.vote
d_vote_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_920
d_vote_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_942
      (coe v0)
-- _.GovActions.GovVote.voter
d_voter_1030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784
d_voter_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_940
      (coe v0)
-- _.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_848
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
-- Ledger.Conway.Specification.Ledger._.EnactState
d_EnactState_1820 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.EnactState.cc
d_cc_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1056 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.constitution
d_constitution_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1058
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pparams
d_pparams_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1062
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.pv
d_pv_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1060 (coe v0)
-- Ledger.Conway.Specification.Ledger._.EnactState.withdrawals
d_withdrawals_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1064
      (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_GovEnv_2436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1888 = erased
-- Ledger.Conway.Specification.Ledger._.GovState
d_GovState_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_GovState_1902 = erased
-- Ledger.Conway.Specification.Ledger._.GovStateOf
d_GovStateOf_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2428
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1906 ~v0 ~v1 = du_HasCast'45'GovEnv_1906
du_HasCast'45'GovEnv_1906 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1906
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.du_HasCast'45'GovEnv_2474
-- Ledger.Conway.Specification.Ledger._.HasGovState
d_HasGovState_1912 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGovState.GovStateOf
d_GovStateOf_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.d_GovStateOf_2428
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-UTxOEnv
d_HasCast'45'UTxOEnv_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOEnv_2036 ~v0 ~v1 = du_HasCast'45'UTxOEnv_2036
du_HasCast'45'UTxOEnv_2036 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOEnv_2036
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasCast'45'UTxOEnv_2376
-- Ledger.Conway.Specification.Ledger._.HasDeposits-UTxOState
d_HasDeposits'45'UTxOState_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
d_HasDeposits'45'UTxOState_2044 ~v0 ~v1
  = du_HasDeposits'45'UTxOState_2044
du_HasDeposits'45'UTxOState_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
du_HasDeposits'45'UTxOState_2044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2372
-- Ledger.Conway.Specification.Ledger._.HasDonations-UTxOState
d_HasDonations'45'UTxOState_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'UTxOState_2046 ~v0 ~v1
  = du_HasDonations'45'UTxOState_2046
du_HasDonations'45'UTxOState_2046 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'UTxOState_2046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2374
-- Ledger.Conway.Specification.Ledger._.HasUTxO-UTxOState
d_HasUTxO'45'UTxOState_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168
d_HasUTxO'45'UTxOState_2052 ~v0 ~v1 = du_HasUTxO'45'UTxOState_2052
du_HasUTxO'45'UTxOState_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168
du_HasUTxO'45'UTxOState_2052
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2368
-- Ledger.Conway.Specification.Ledger._.HasUTxOState
d_HasUTxOState_2054 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOState
d_UTxOState_2074 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.UTxOStateOf
d_UTxOStateOf_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2350 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_UTxOStateOf_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2358
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasUTxOState.UTxOStateOf
d_UTxOStateOf_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2350 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_UTxOStateOf_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_UTxOStateOf_2358
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.deposits
d_deposits_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2340
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.donations
d_donations_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_donations_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2342
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.fees
d_fees_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_fees_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2338 (coe v0)
-- Ledger.Conway.Specification.Ledger._.UTxOState.utxo
d_utxo_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336 (coe v0)
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2220 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1278 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2272 = erased
-- Ledger.Conway.Specification.Ledger._.CertState
d_CertState_2298 a0 a1 = ()
-- Ledger.Conway.Specification.Ledger._.CertStateOf
d_CertStateOf_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_CertStateOf_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DStateOf
d_DStateOf_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_DStateOf_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1386
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.DepositsOf
d_DepositsOf_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.GStateOf
d_GStateOf_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_GStateOf_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1426
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2358 ~v0 ~v1 = du_HasCast'45'CertEnv_2358
du_HasCast'45'CertEnv_2358 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1494
-- Ledger.Conway.Specification.Ledger._.HasCertState
d_HasCertState_2370 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDState
d_HasDState_2384 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasDState-CertState
d_HasDState'45'CertState_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378
d_HasDState'45'CertState_2388 ~v0 ~v1
  = du_HasDState'45'CertState_2388
du_HasDState'45'CertState_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378
du_HasDState'45'CertState_2388
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1472
-- Ledger.Conway.Specification.Ledger._.HasDeposits
d_HasDeposits_2390 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState
d_HasGState_2394 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasGState-CertState
d_HasGState'45'CertState_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418
d_HasGState'45'CertState_2398 ~v0 ~v1
  = du_HasGState'45'CertState_2398
du_HasGState'45'CertState_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418
du_HasGState'45'CertState_2398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1476
-- Ledger.Conway.Specification.Ledger._.HasPState
d_HasPState_2402 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPState-CertState
d_HasPState'45'CertState_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
d_HasPState'45'CertState_2406 ~v0 ~v1
  = du_HasPState'45'CertState_2406
du_HasPState'45'CertState_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
du_HasPState'45'CertState_2406
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1474
-- Ledger.Conway.Specification.Ledger._.HasPools
d_HasPools_2408 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Ledger._.HasPools-CertState
d_HasPools'45'CertState_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'CertState_2412 ~v0 ~v1
  = du_HasPools'45'CertState_2412
du_HasPools'45'CertState_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
du_HasPools'45'CertState_2412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1482
-- Ledger.Conway.Specification.Ledger._.HasRewards-CertState
d_HasRewards'45'CertState_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'CertState_2426 ~v0 ~v1
  = du_HasRewards'45'CertState_2426
du_HasRewards'45'CertState_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
du_HasRewards'45'CertState_2426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1478
-- Ledger.Conway.Specification.Ledger._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
d_HasVoteDelegs'45'DState_2442 ~v0 ~v1
  = du_HasVoteDelegs'45'DState_2442
du_HasVoteDelegs'45'DState_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
du_HasVoteDelegs'45'DState_2442
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1458
-- Ledger.Conway.Specification.Ledger._.PStateOf
d_PStateOf_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_PStateOf_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1406
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.PoolsOf
d_PoolsOf_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.dState
d_dState_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_dState_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1350
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.gState
d_gState_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_gState_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1354
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.CertState.pState
d_pState_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_pState_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1352
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasCertState.CertStateOf
d_CertStateOf_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_CertStateOf_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1446
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDState.DStateOf
d_DStateOf_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1302
d_DStateOf_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1386
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasDeposits.DepositsOf
d_DepositsOf_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasGState.GStateOf
d_GStateOf_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1330
d_GStateOf_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1426
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPState.PStateOf
d_PStateOf_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_PStateOf_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1406
      (coe v0)
-- Ledger.Conway.Specification.Ledger._.HasPools.PoolsOf
d_PoolsOf_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
      (coe v0)
-- Ledger.Conway.Specification.Ledger.LEnv
d_LEnv_2680 a0 a1 = ()
data T_LEnv_2680
  = C_constructor_2702 AgdaAny (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
                       Integer
-- Ledger.Conway.Specification.Ledger.LEnv.slot
d_slot_2692 :: T_LEnv_2680 -> AgdaAny
d_slot_2692 v0
  = case coe v0 of
      C_constructor_2702 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.ppolicy
d_ppolicy_2694 :: T_LEnv_2680 -> Maybe AgdaAny
d_ppolicy_2694 v0
  = case coe v0 of
      C_constructor_2702 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.pparams
d_pparams_2696 ::
  T_LEnv_2680 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2696 v0
  = case coe v0 of
      C_constructor_2702 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.enactState
d_enactState_2698 ::
  T_LEnv_2680 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_enactState_2698 v0
  = case coe v0 of
      C_constructor_2702 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LEnv.treasury
d_treasury_2700 :: T_LEnv_2680 -> Integer
d_treasury_2700 v0
  = case coe v0 of
      C_constructor_2702 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasPParams-LEnv
d_HasPParams'45'LEnv_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'LEnv_2704 ~v0 ~v1 = du_HasPParams'45'LEnv_2704
du_HasPParams'45'LEnv_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
du_HasPParams'45'LEnv_2704
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_428
      (coe (\ v0 -> d_pparams_2696 (coe v0)))
-- Ledger.Conway.Specification.Ledger.LState
d_LState_2706 a0 a1 = ()
data T_LState_2706
  = C_'10214'_'44'_'44'_'10215''737'_2720 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
-- Ledger.Conway.Specification.Ledger.LState.utxoSt
d_utxoSt_2714 ::
  T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2714 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2720 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.govSt
d_govSt_2716 ::
  T_LState_2706 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2716 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2720 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.LState.certState
d_certState_2718 ::
  T_LState_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_certState_2718 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2720 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.HasLState
d_HasLState_2726 a0 a1 a2 a3 = ()
newtype T_HasLState_2726
  = C_constructor_2736 (AgdaAny -> T_LState_2706)
-- Ledger.Conway.Specification.Ledger.HasLState.LStateOf
d_LStateOf_2734 :: T_HasLState_2726 -> AgdaAny -> T_LState_2706
d_LStateOf_2734 v0
  = case coe v0 of
      C_constructor_2736 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger._.LStateOf
d_LStateOf_2740 :: T_HasLState_2726 -> AgdaAny -> T_LState_2706
d_LStateOf_2740 v0 = coe d_LStateOf_2734 (coe v0)
-- Ledger.Conway.Specification.Ledger.HasUTxOState-LState
d_HasUTxOState'45'LState_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2350
d_HasUTxOState'45'LState_2742 ~v0 ~v1
  = du_HasUTxOState'45'LState_2742
du_HasUTxOState'45'LState_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_HasUTxOState_2350
du_HasUTxOState'45'LState_2742
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_constructor_2360
      (coe (\ v0 -> d_utxoSt_2714 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasUTxO-LState
d_HasUTxO'45'LState_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168
d_HasUTxO'45'LState_2744 ~v0 ~v1 = du_HasUTxO'45'LState_2744
du_HasUTxO'45'LState_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3168
du_HasUTxO'45'LState_2744
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3178
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3176
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasUTxO'45'UTxOState_2368)
              (d_utxoSt_2714 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGovState-LState
d_HasGovState'45'LState_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420
d_HasGovState'45'LState_2746 ~v0 ~v1
  = du_HasGovState'45'LState_2746
du_HasGovState'45'LState_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2420
du_HasGovState'45'LState_2746
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.C_constructor_2430
      (coe (\ v0 -> d_govSt_2716 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasCertState-LState
d_HasCertState'45'LState_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438
d_HasCertState'45'LState_2748 ~v0 ~v1
  = du_HasCertState'45'LState_2748
du_HasCertState'45'LState_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1438
du_HasCertState'45'LState_2748
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1448
      (coe (\ v0 -> d_certState_2718 (coe v0)))
-- Ledger.Conway.Specification.Ledger.HasDeposits-LState
d_HasDeposits'45'LState_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
d_HasDeposits'45'LState_2750 ~v0 ~v1
  = du_HasDeposits'45'LState_2750
du_HasDeposits'45'LState_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1068
du_HasDeposits'45'LState_2750
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1078
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1076
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDeposits'45'UTxOState_2372)
              (d_utxoSt_2714 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPools-LState
d_HasPools'45'LState_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'LState_2752 ~v0 ~v1 = du_HasPools'45'LState_2752
du_HasPools'45'LState_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
du_HasPools'45'LState_2752
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1148
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1482)
              (d_certState_2718 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasGState-LState
d_HasGState'45'LState_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418
d_HasGState'45'LState_2754 ~v0 ~v1 = du_HasGState'45'LState_2754
du_HasGState'45'LState_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1418
du_HasGState'45'LState_2754
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1428
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1426
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1476)
              (d_certState_2718 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasDState-LState
d_HasDState'45'LState_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378
d_HasDState'45'LState_2756 ~v0 ~v1 = du_HasDState'45'LState_2756
du_HasDState'45'LState_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1378
du_HasDState'45'LState_2756
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1388
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1386
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1472)
              (d_certState_2718 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasPState-LState
d_HasPState'45'LState_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
d_HasPState'45'LState_2758 ~v0 ~v1 = du_HasPState'45'LState_2758
du_HasPState'45'LState_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1398
du_HasPState'45'LState_2758
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1408
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1406
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1474)
              (d_certState_2718 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasVoteDelegs-LState
d_HasVoteDelegs'45'LState_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
d_HasVoteDelegs'45'LState_2760 ~v0 ~v1
  = du_HasVoteDelegs'45'LState_2760
du_HasVoteDelegs'45'LState_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_840
du_HasVoteDelegs'45'LState_2760
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_850
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_848
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1458)
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1386
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1472)
                 (d_certState_2718 (coe v0)))))
-- Ledger.Conway.Specification.Ledger.HasDonations-LState
d_HasDonations'45'LState_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'LState_2762 ~v0 ~v1
  = du_HasDonations'45'LState_2762
du_HasDonations'45'LState_2762 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'LState_2762
  = coe
      MAlonzo.Code.Ledger.Prelude.Base.C_constructor_30
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_HasDonations'45'UTxOState_2374)
              (d_utxoSt_2714 (coe v0))))
-- Ledger.Conway.Specification.Ledger.HasCast-LEnv
d_HasCast'45'LEnv_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2764 ~v0 ~v1 = du_HasCast'45'LEnv_2764
du_HasCast'45'LEnv_2764 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2764
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
                                 (2680 :: Integer) (11007941034284287304 :: Integer)
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
                                 (490 :: Integer) (11007941034284287304 :: Integer) "_.Slot"
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
                                    (2680 :: Integer) (11007941034284287304 :: Integer)
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
                                                (444 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2680 :: Integer) (11007941034284287304 :: Integer)
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
                                       (386 :: Integer) (11007941034284287304 :: Integer)
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
                                          (2680 :: Integer) (11007941034284287304 :: Integer)
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
                                          (1820 :: Integer) (11007941034284287304 :: Integer)
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
                                             (2680 :: Integer) (11007941034284287304 :: Integer)
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
         (coe C_constructor_2702))
-- Ledger.Conway.Specification.Ledger.HasCast-LState
d_HasCast'45'LState_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2766 ~v0 ~v1 = du_HasCast'45'LState_2766
du_HasCast'45'LState_2766 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2766
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
                                 (2074 :: Integer) (11007941034284287304 :: Integer)
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
                                    (2706 :: Integer) (11007941034284287304 :: Integer)
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
                                    (1902 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2706 :: Integer) (11007941034284287304 :: Integer)
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
                                       (2298 :: Integer) (11007941034284287304 :: Integer)
                                       "Ledger.Conway.Specification.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2720))
-- Ledger.Conway.Specification.Ledger.txgov
d_txgov_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2768 ~v0 ~v1 v2 = du_txgov_2768 v2
du_txgov_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2768 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__32
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3246
            (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3244
            (coe v0)))
-- Ledger.Conway.Specification.Ledger.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2814 v0 ~v1 v2 v3
  = du_rmOrphanDRepVotes_2814 v0 v2 v3
du_rmOrphanDRepVotes_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2814 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         MAlonzo.Code.Class.Bifunctor.du_map'8322'_124
         (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
         (coe du_go_2828 (coe v0) (coe v1)))
      (coe v2)
-- Ledger.Conway.Specification.Ledger._.ifDRepRegistered
d_ifDRepRegistered_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_ifDRepRegistered_2824 = erased
-- Ledger.Conway.Specification.Ledger._.go
d_go_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992
d_go_2828 v0 ~v1 v2 ~v3 v4 = du_go_2828 v0 v2 v4
du_go_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_992
du_go_2828 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1014
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_990
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_984
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1004
               (coe v2)))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filterKeys_1208
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
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                             (coe v0)))))
                 (coe v3)
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_562
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1336
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1354
                          (coe v1)))))
            (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_986
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1004
                  (coe v2))))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_988
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1004
               (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1006
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1008
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1010
         (coe v2))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1012
         (coe v2))
-- Ledger.Conway.Specification.Ledger.allColdCreds
d_allColdCreds_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2832 ~v0 ~v1 v2 v3 = du_allColdCreds_2832 v2 v3
du_allColdCreds_2832 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2832 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1096
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1056 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1142
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1010
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_430
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2874 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2874
  = C_LEDGER'45'V_2916 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2918 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Ledger._.txCerts
d_txCerts_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_21111 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242]
d_txCerts_2894 ~v0 ~v1 v2 = du_txCerts_2894 v2
du_txCerts_2894 ::
  T_GeneralizeTel_21111 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242]
du_txCerts_2894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_21087 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txGovVotes
d_txGovVotes_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_21111 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_2902 ~v0 ~v1 v2 = du_txGovVotes_2902 v2
du_txGovVotes_2902 ::
  T_GeneralizeTel_21111 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
du_txGovVotes_2902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_21087 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txId
d_txId_2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_21111 -> AgdaAny
d_txId_2904 ~v0 ~v1 v2 = du_txId_2904 v2
du_txId_2904 :: T_GeneralizeTel_21111 -> AgdaAny
du_txId_2904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_21087 (coe v0)))
-- Ledger.Conway.Specification.Ledger._.txWithdrawals
d_txWithdrawals_2914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_21111 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2914 ~v0 ~v1 v2 = du_txWithdrawals_2914 v2
du_txWithdrawals_2914 ::
  T_GeneralizeTel_21111 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_21087 (coe v0)))
-- Ledger.Conway.Specification.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_LEnv_2680 ->
  T_LState_2706 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364] ->
  T_LState_2706 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2936 = erased
-- Ledger.Conway.Specification.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_21087 ::
  T_GeneralizeTel_21111 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
d_'46'generalizedField'45'tx_21087 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-slot
d_'46'generalizedField'45'slot_21089 ::
  T_GeneralizeTel_21111 -> AgdaAny
d_'46'generalizedField'45'slot_21089 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-pp
d_'46'generalizedField'45'pp_21091 ::
  T_GeneralizeTel_21111 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_'46'generalizedField'45'pp_21091 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-treasury
d_'46'generalizedField'45'treasury_21093 ::
  T_GeneralizeTel_21111 -> Integer
d_'46'generalizedField'45'treasury_21093 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt
d_'46'generalizedField'45'utxoSt_21095 ::
  T_GeneralizeTel_21111 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_'46'generalizedField'45'utxoSt_21095 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_21097 ::
  T_GeneralizeTel_21111 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_'46'generalizedField'45'utxoSt''_21097 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt
d_'46'generalizedField'45'govSt_21099 ::
  T_GeneralizeTel_21111 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt_21099 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-enactState
d_'46'generalizedField'45'enactState_21101 ::
  T_GeneralizeTel_21111 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_'46'generalizedField'45'enactState_21101 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState
d_'46'generalizedField'45'certState_21103 ::
  T_GeneralizeTel_21111 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_'46'generalizedField'45'certState_21103 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_21105 ::
  T_GeneralizeTel_21111 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
d_'46'generalizedField'45'certState''_21105 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-ppolicy
d_'46'generalizedField'45'ppolicy_21107 ::
  T_GeneralizeTel_21111 -> Maybe AgdaAny
d_'46'generalizedField'45'ppolicy_21107 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_21109 ::
  T_GeneralizeTel_21111 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_21109 v0
  = case coe v0 of
      C_mkGeneralizeTel_21113 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Ledger.GeneralizeTel
d_GeneralizeTel_21111 a0 a1 = ()
data T_GeneralizeTel_21111
  = C_mkGeneralizeTel_21113 MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
                            AgdaAny
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
                            Integer
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                            MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342
                            (Maybe AgdaAny) [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
