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

module MAlonzo.Code.Ledger.Conway.Specification.Gov where

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
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Properties.Equivalence
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.Qstdlib.Data.List.Subpermutations
import qualified MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties

-- Ledger.Conway.Specification.Gov._.Anchor
d_Anchor_16 a0 = ()
-- Ledger.Conway.Specification.Gov._.GovAction
d_GovAction_40 a0 = ()
-- Ledger.Conway.Specification.Gov._.GovActionID
d_GovActionID_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovActionID_46 = erased
-- Ledger.Conway.Specification.Gov._.GovActionState
d_GovActionState_50 a0 = ()
-- Ledger.Conway.Specification.Gov._.GovActionType
d_GovActionType_54 a0 = ()
-- Ledger.Conway.Specification.Gov._.GovProposal
d_GovProposal_58 a0 = ()
-- Ledger.Conway.Specification.Gov._.GovVote
d_GovVote_66 a0 = ()
-- Ledger.Conway.Specification.Gov._.GovVoter
d_GovVoter_70 a0 = ()
-- Ledger.Conway.Specification.Gov._.GovVotes
d_GovVotes_76 a0 = ()
-- Ledger.Conway.Specification.Gov._.HasCast-GovVote
d_HasCast'45'GovVote_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_82 ~v0 = du_HasCast'45'GovVote_82
du_HasCast'45'GovVote_82 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_82
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1250
-- Ledger.Conway.Specification.Gov._.NeedsHash
d_NeedsHash_136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  ()
d_NeedsHash_136 = erased
-- Ledger.Conway.Specification.Gov._.Vote
d_Vote_160 a0 = ()
-- Ledger.Conway.Specification.Gov._.Anchor.hash
d_hash_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_926 ->
  AgdaAny
d_hash_196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_934
      (coe v0)
-- Ledger.Conway.Specification.Gov._.Anchor.url
d_url_198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_926 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_932
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovAction.gaData
d_gaData_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  AgdaAny
d_gaData_202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_878
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovAction.gaType
d_gaType_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836
d_gaType_204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_876
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovActionState.action
d_action_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870
d_action_208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1064
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovActionState.expiresIn
d_expiresIn_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  AgdaAny
d_expiresIn_210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1062
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovActionState.prevAction
d_prevAction_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  AgdaAny
d_prevAction_212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1066
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovActionState.returnAddr
d_returnAddr_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1060
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovActionState.votes
d_votes_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_958
d_votes_216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovProposal.action
d_action_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1018 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870
d_action_236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1032
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovProposal.anchor
d_anchor_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1018 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_926
d_anchor_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1042
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovProposal.deposit
d_deposit_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1018 ->
  Integer
d_deposit_240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1038
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovProposal.policy
d_policy_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1018 ->
  Maybe AgdaAny
d_policy_242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1036
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovProposal.prevAction
d_prevAction_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1018 ->
  AgdaAny
d_prevAction_244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1034
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovProposal.returnAddr
d_returnAddr_246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1018 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1040
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVote.anchor
d_anchor_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_938 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_926
d_anchor_258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_954
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVote.gid
d_gid_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_938 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_948
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVote.vote
d_vote_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_938 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_906
d_vote_262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_952
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVote.voter
d_voter_264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_938 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914
d_voter_264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_950
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVoter.gvCredential
d_gvCredential_268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  AgdaAny
d_gvCredential_268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_922
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVoter.gvRole
d_gvRole_270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_824
d_gvRole_270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_920
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVotes.gvCC
d_gvCC_274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_966
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVotes.gvDRep
d_gvDRep_276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_968
      (coe v0)
-- Ledger.Conway.Specification.Gov._.GovVotes.gvSPO
d_gvSPO_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_970
      (coe v0)
-- Ledger.Conway.Specification.Gov._.EnactState
d_EnactState_346 a0 = ()
-- Ledger.Conway.Specification.Gov._.EnactStateOf
d_EnactStateOf_350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_EnactStateOf_350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1188
      (coe v0)
-- Ledger.Conway.Specification.Gov._.HasEnactState
d_HasEnactState_354 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov._.EnactState.cc
d_cc_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1164 (coe v0)
-- Ledger.Conway.Specification.Gov._.EnactState.constitution
d_constitution_398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1166
      (coe v0)
-- Ledger.Conway.Specification.Gov._.EnactState.pparams
d_pparams_400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1170
      (coe v0)
-- Ledger.Conway.Specification.Gov._.EnactState.pv
d_pv_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1168 (coe v0)
-- Ledger.Conway.Specification.Gov._.EnactState.withdrawals
d_withdrawals_404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1172
      (coe v0)
-- Ledger.Conway.Specification.Gov._.HasEnactState.EnactStateOf
d_EnactStateOf_408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_EnactStateOf_408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1188
      (coe v0)
-- Ledger.Conway.Specification.Gov._.canVote
d_canVote_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_824 ->
  ()
d_canVote_474 = erased
-- Ledger.Conway.Specification.Gov._.expired
d_expired_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  ()
d_expired_482 = erased
-- Ledger.Conway.Specification.Gov._.CertState
d_CertState_626 a0 = ()
-- Ledger.Conway.Specification.Gov._.CertStateOf
d_CertStateOf_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1524 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428
d_CertStateOf_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1532
      (coe v0)
-- Ledger.Conway.Specification.Gov._.HasCertState
d_HasCertState_696 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov._.CertState.dState
d_dState_888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1384
d_dState_888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1436
      (coe v0)
-- Ledger.Conway.Specification.Gov._.CertState.gState
d_gState_890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1416
d_gState_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1440
      (coe v0)
-- Ledger.Conway.Specification.Gov._.CertState.pState
d_pState_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400
d_pState_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1438
      (coe v0)
-- Ledger.Conway.Specification.Gov._.HasCertState.CertStateOf
d_CertStateOf_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1524 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428
d_CertStateOf_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1532
      (coe v0)
-- Ledger.Conway.Specification.Gov._._+ᵉ_
d__'43''7497'__1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1010 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_656
         (coe v0))
-- Ledger.Conway.Specification.Gov._.Credential
d_Credential_1040 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov._.DecEq-Credential
d_DecEq'45'Credential_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1070 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_1070 v2 v3
du_DecEq'45'Credential_1070 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_1070 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Gov._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1086 ~v0 = du_DecEq'45'PParamGroup_1086
du_DecEq'45'PParamGroup_1086 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1086
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_582
-- Ledger.Conway.Specification.Gov._.Epoch
d_Epoch_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_Epoch_1122 = erased
-- Ledger.Conway.Specification.Gov._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1150 ~v0 ~v1 ~v2 ~v3
  = du_HasCredential'45'RewardAddress_1150
du_HasCredential'45'RewardAddress_1150 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1150
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_224
-- Ledger.Conway.Specification.Gov._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'RewardAddress_1164 ~v0 ~v1 ~v2 ~v3
  = du_HasNetworkId'45'RewardAddress_1164
du_HasNetworkId'45'RewardAddress_1164 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'RewardAddress_1164
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222
-- Ledger.Conway.Specification.Gov._.HasPParams
d_HasPParams_1166 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov._.NetworkId
d_NetworkId_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny
d_NetworkId_1210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1194
         (coe v0))
-- Ledger.Conway.Specification.Gov._.PParams
d_PParams_1226 a0 = ()
-- Ledger.Conway.Specification.Gov._.PParamsOf
d_PParamsOf_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- Ledger.Conway.Specification.Gov._.ProtVer
d_ProtVer_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ProtVer_1252 = erased
-- Ledger.Conway.Specification.Gov._.RewardAddress
d_RewardAddress_1262 a0 a1 a2 a3 = ()
-- Ledger.Conway.Specification.Gov._.ScriptHash
d_ScriptHash_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_ScriptHash_1280 = erased
-- Ledger.Conway.Specification.Gov._.preoEpoch
d_preoEpoch_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1450 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_656
         (coe v0))
-- Ledger.Conway.Specification.Gov._.pvCanFollow
d_pvCanFollow_1454 a0 a1 a2 = ()
-- Ledger.Conway.Specification.Gov._.HasPParams.PParamsOf
d_PParamsOf_1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_1574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.Emax
d_Emax_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_Emax_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.a
d_a_1600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_1600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.a0
d_a0_1602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.b
d_b_1604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.ccMaxTermLength
d_ccMaxTermLength_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.ccMinSize
d_ccMinSize_1608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.collateralPercentage
d_collateralPercentage_1612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.costmdlsAssoc
d_costmdlsAssoc_1616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.drepActivity
d_drepActivity_1618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_drepActivity_1618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.drepDeposit
d_drepDeposit_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.drepThresholds
d_drepThresholds_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.govActionDeposit
d_govActionDeposit_1624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.govActionLifetime
d_govActionLifetime_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.keyDeposit
d_keyDeposit_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxBlockExUnits
d_maxBlockExUnits_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxBlockExUnits_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxBlockSize
d_maxBlockSize_1632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxCollateralInputs
d_maxCollateralInputs_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxHeaderSize
d_maxHeaderSize_1636 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1640 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxTxExUnits
d_maxTxExUnits_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_maxTxExUnits_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxTxSize
d_maxTxSize_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.maxValSize
d_maxValSize_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1648 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.minUTxOValue
d_minUTxOValue_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.monetaryExpansion
d_monetaryExpansion_1652 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.nopt
d_nopt_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.poolDeposit
d_poolDeposit_1656 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.poolThresholds
d_poolThresholds_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.prices
d_prices_1660 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny
d_prices_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.pv
d_pv_1662 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1664 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.refScriptCostStride
d_refScriptCostStride_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- Ledger.Conway.Specification.Gov._.PParams.treasuryCut
d_treasuryCut_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- Ledger.Conway.Specification.Gov._.RewardAddress.net
d_net_1798 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_1798 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Specification.Gov._.RewardAddress.stake
d_stake_1800 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Specification.Gov.GovState
d_GovState_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_GovState_1820 = erased
-- Ledger.Conway.Specification.Gov.HasGovState
d_HasGovState_1826 a0 a1 a2 = ()
newtype T_HasGovState_1826
  = C_constructor_1836 (AgdaAny ->
                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Conway.Specification.Gov.HasGovState.GovStateOf
d_GovStateOf_1834 ::
  T_HasGovState_1826 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1834 v0
  = case coe v0 of
      C_constructor_1836 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov._.GovStateOf
d_GovStateOf_1840 ::
  T_HasGovState_1826 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_1840 v0 = coe d_GovStateOf_1834 (coe v0)
-- Ledger.Conway.Specification.Gov.GovEnv
d_GovEnv_1842 a0 = ()
data T_GovEnv_1842
  = C_constructor_1872 AgdaAny AgdaAny
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
                       (Maybe AgdaAny)
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428
                       [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
-- Ledger.Conway.Specification.Gov.GovEnv.txid
d_txid_1858 :: T_GovEnv_1842 -> AgdaAny
d_txid_1858 v0
  = case coe v0 of
      C_constructor_1872 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.GovEnv.epoch
d_epoch_1860 :: T_GovEnv_1842 -> AgdaAny
d_epoch_1860 v0
  = case coe v0 of
      C_constructor_1872 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.GovEnv.pparams
d_pparams_1862 ::
  T_GovEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_1862 v0
  = case coe v0 of
      C_constructor_1872 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.GovEnv.ppolicy
d_ppolicy_1864 :: T_GovEnv_1842 -> Maybe AgdaAny
d_ppolicy_1864 v0
  = case coe v0 of
      C_constructor_1872 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.GovEnv.enactState
d_enactState_1866 ::
  T_GovEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_enactState_1866 v0
  = case coe v0 of
      C_constructor_1872 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.GovEnv.certState
d_certState_1868 ::
  T_GovEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428
d_certState_1868 v0
  = case coe v0 of
      C_constructor_1872 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.GovEnv.rewardCreds
d_rewardCreds_1870 ::
  T_GovEnv_1842 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_rewardCreds_1870 v0
  = case coe v0 of
      C_constructor_1872 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.HasPParams-GovEnv
d_HasPParams'45'GovEnv_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'GovEnv_1874 ~v0 = du_HasPParams'45'GovEnv_1874
du_HasPParams'45'GovEnv_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
du_HasPParams'45'GovEnv_1874
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_440
      (coe (\ v0 -> d_pparams_1862 (coe v0)))
-- Ledger.Conway.Specification.Gov.HasEnactState-GovEnv
d_HasEnactState'45'GovEnv_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180
d_HasEnactState'45'GovEnv_1876 ~v0
  = du_HasEnactState'45'GovEnv_1876
du_HasEnactState'45'GovEnv_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1180
du_HasEnactState'45'GovEnv_1876
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1190
      (coe (\ v0 -> d_enactState_1866 (coe v0)))
-- Ledger.Conway.Specification.Gov.HasCertState-GovEnv
d_HasCertState'45'GovEnv_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1524
d_HasCertState'45'GovEnv_1878 ~v0 = du_HasCertState'45'GovEnv_1878
du_HasCertState'45'GovEnv_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1524
du_HasCertState'45'GovEnv_1878
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1534
      (coe (\ v0 -> d_certState_1868 (coe v0)))
-- Ledger.Conway.Specification.Gov.HasCast-GovEnv
d_HasCast'45'GovEnv_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1880 ~v0 = du_HasCast'45'GovEnv_1880
du_HasCast'45'GovEnv_1880 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1880
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
                                 (1842 :: Integer) (18435547186078748949 :: Integer)
                                 "Ledger.Conway.Specification.Gov.GovEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (604 :: Integer) (7805089389717466778 :: Integer)
                                 "Ledger.Conway.Specification.Gov.Base.GovStructure.TxId"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
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
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                    (coe (1 :: Integer))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                    (1842 :: Integer) (18435547186078748949 :: Integer)
                                    "Ledger.Conway.Specification.Gov.GovEnv"
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
                                    (1122 :: Integer) (18435547186078748949 :: Integer)
                                    "Ledger.Conway.Specification.Gov._.Epoch"
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
                                       (1842 :: Integer) (18435547186078748949 :: Integer)
                                       "Ledger.Conway.Specification.Gov.GovEnv"
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
                                       (1226 :: Integer) (18435547186078748949 :: Integer)
                                       "Ledger.Conway.Specification.Gov._.PParams"
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
                                          (1842 :: Integer) (18435547186078748949 :: Integer)
                                          "Ledger.Conway.Specification.Gov.GovEnv"
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
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
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
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                      (1280 :: Integer)
                                                      (18435547186078748949 :: Integer)
                                                      "Ledger.Conway.Specification.Gov._.ScriptHash"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
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
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (1842 :: Integer) (18435547186078748949 :: Integer)
                                             "Ledger.Conway.Specification.Gov.GovEnv"
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
                                             (346 :: Integer) (18435547186078748949 :: Integer)
                                             "Ledger.Conway.Specification.Gov._.EnactState"
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (1842 :: Integer) (18435547186078748949 :: Integer)
                                                "Ledger.Conway.Specification.Gov.GovEnv"
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
                                                (626 :: Integer) (18435547186078748949 :: Integer)
                                                "Ledger.Conway.Specification.Gov._.CertState"
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
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (1842 :: Integer)
                                                   (18435547186078748949 :: Integer)
                                                   "Ledger.Conway.Specification.Gov.GovEnv"
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
                                                   (128 :: Integer) (9254951203007797098 :: Integer)
                                                   "abstract-set-theory.FiniteSetTheory._.Set"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                            (1040 :: Integer)
                                                            (18435547186078748949 :: Integer)
                                                            "Ledger.Conway.Specification.Gov._.Credential"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                                     (320 :: Integer)
                                                                     (753823221557309123 :: Integer)
                                                                     "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                                              (1194 :: Integer)
                                                                              (7805089389717466778 ::
                                                                                 Integer)
                                                                              "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
                                                                              (MAlonzo.RTE.Fixity
                                                                                 MAlonzo.RTE.NonAssoc
                                                                                 MAlonzo.RTE.Unrelated)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                 (coe
                                                                                    (1 :: Integer))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                                        (26 :: Integer)
                                                                        (14321319370142338143 ::
                                                                           Integer)
                                                                        "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
                                                                        (MAlonzo.RTE.Fixity
                                                                           MAlonzo.RTE.NonAssoc
                                                                           MAlonzo.RTE.Unrelated)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                                                    (206 :: Integer)
                                                                                    (14321319370142338143 ::
                                                                                       Integer)
                                                                                    "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                                                             (610 ::
                                                                                                Integer)
                                                                                             (7805089389717466778 ::
                                                                                                Integer)
                                                                                             "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                             (MAlonzo.RTE.Fixity
                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                (coe
                                                                                                   (1 ::
                                                                                                      Integer))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                                           (210 :: Integer)
                                                                           (14321319370142338143 ::
                                                                              Integer)
                                                                           "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
                                                                           (MAlonzo.RTE.Fixity
                                                                              MAlonzo.RTE.NonAssoc
                                                                              MAlonzo.RTE.Unrelated)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                                                    (610 :: Integer)
                                                                                    (7805089389717466778 ::
                                                                                       Integer)
                                                                                    "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_constructor_1872))
-- Ledger.Conway.Specification.Gov.govActionPriority
d_govActionPriority_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  Integer
d_govActionPriority_1908 ~v0 v1 = du_govActionPriority_1908 v1
du_govActionPriority_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  Integer
du_govActionPriority_1908 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
        -> coe (0 :: Integer)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
        -> coe (1 :: Integer)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
        -> coe (2 :: Integer)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
        -> coe (3 :: Integer)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
        -> coe (4 :: Integer)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
        -> coe (5 :: Integer)
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
        -> coe (6 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.Overlap
d_Overlap_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  ()
d_Overlap_1910 = erased
-- Ledger.Conway.Specification.Gov.Overlap?
d_Overlap'63'_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Overlap'63'_1920 ~v0 v1 v2 = du_Overlap'63'_1920 v1 v2
du_Overlap'63'_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Overlap'63'_1920 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.insertGovAction
d_insertGovAction_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_insertGovAction_1922 ~v0 v1 v2 = du_insertGovAction_1922 v1 v2
du_insertGovAction_1922 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_insertGovAction_1922 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Class.ToBool.du_if_then_else__38
                           (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                              (coe
                                 du_govActionPriority_1908
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_876
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1064
                                       (coe v5))))
                              (coe
                                 du_govActionPriority_1908
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_876
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1064
                                       (coe v7)))))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                                   (coe du_insertGovAction_1922 (coe v3) (coe v1))))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.mkGovStatePair
d_mkGovStatePair_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkGovStatePair_1938 ~v0 v1 v2 v3 v4 v5
  = du_mkGovStatePair_1938 v1 v2 v3 v4 v5
du_mkGovStatePair_1938 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkGovStatePair_1938 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
      (coe du_gas_1954 (coe v0) (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Specification.Gov._.gas
d_gas_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046
d_gas_1954 ~v0 v1 ~v2 v3 v4 v5 = du_gas_1954 v1 v3 v4 v5
du_gas_1954 ::
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046
du_gas_1954 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1068
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_972
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
      (coe v1) (coe v0) (coe v2) (coe v3)
-- Ledger.Conway.Specification.Gov.addAction
d_addAction_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_1958 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_1958 v1 v2 v3 v4 v5 v6
du_addAction_1958 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_1958 v0 v1 v2 v3 v4 v5
  = coe
      du_insertGovAction_1922 (coe v0)
      (coe
         du_mkGovStatePair_1938 (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Conway.Specification.Gov.addVote
d_addVote_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_1972 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
      () erased
      (coe du_modifyVotes_1986 (coe v0) (coe v2) (coe v3) (coe v4)) v1
-- Ledger.Conway.Specification.Gov._.modifyVotes
d_modifyVotes_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_modifyVotes_1986 v0 ~v1 v2 v3 v4 v5
  = du_modifyVotes_1986 v0 v2 v3 v4 v5
du_modifyVotes_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_modifyVotes_1986 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
             (coe
                MAlonzo.Code.Class.ToBool.du_if_then_else__38
                (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_106) erased
                (coe
                   MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                   (coe
                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                      (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_608
                         (coe v0))
                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                   (coe v5) (coe v1))
                (coe
                   (\ v7 ->
                      coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_1068
                        (coe du_votes''_2004 (coe v0) (coe v3) (coe v6) (coe v2))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1060
                           (coe v6))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1062
                           (coe v6))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1064
                           (coe v6))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1066
                           (coe v6))))
                (coe (\ v7 -> v6)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov._._.votes'
d_votes''_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_958
d_votes''_2004 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7
  = du_votes''_2004 v0 v4 v6 v7
du_votes''_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_958
du_votes''_2004 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7515'_924 v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_826
               -> coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_972
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_insert_1152
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                   (coe v0)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_966
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                             (coe v2)))
                       (coe v5) (coe v1))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_968
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_970
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                          (coe v2)))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_828
               -> coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_972
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_966
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_insert_1152
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                   (coe v0)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_968
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                             (coe v2)))
                       (coe v5) (coe v1))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_970
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                          (coe v2)))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_830
               -> coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_constructor_972
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_966
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_968
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_insert_1152
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased
                          (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                   (coe v0)))))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_970
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1058
                             (coe v2)))
                       (coe v5) (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.isRegistered
d_isRegistered_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_914 ->
  ()
d_isRegistered_2012 = erased
-- Ledger.Conway.Specification.Gov.validHFAction
d_validHFAction_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1018 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  ()
d_validHFAction_2026 = erased
-- Ledger.Conway.Specification.Gov._.ver
d_ver_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe AgdaAny ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_926 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ver_2040 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_ver_2040 v8
du_ver_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ver_2040 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1168 (coe v0))
-- Ledger.Conway.Specification.Gov._.aid'
d_aid''_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe AgdaAny ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_926 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aid''_2042 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_aid''_2042 v8
du_aid''_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aid''_2042 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1168 (coe v0))
-- Ledger.Conway.Specification.Gov.getAidPairsList
d_getAidPairsList_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_2048 ~v0 v1 = du_getAidPairsList_2048 v1
du_getAidPairsList_2048 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_2048 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_mapMaybe_258
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.Maybe.Base.du_map_64
              (\ v2 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v2))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1210
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_876
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1064
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1066
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))))
      (coe v0)
-- Ledger.Conway.Specification.Gov._connects_to_
d__connects_to__2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__2060 = erased
-- Ledger.Conway.Specification.Gov.enactable
d_enactable_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_2076 = erased
-- Ledger.Conway.Specification.Gov.allEnactable
d_allEnactable_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_2094 = erased
-- Ledger.Conway.Specification.Gov.hasParentE
d_hasParentE_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  ()
d_hasParentE_2100 = erased
-- Ledger.Conway.Specification.Gov.hasParent
d_hasParent_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  AgdaAny -> ()
d_hasParent_2114 = erased
-- Ledger.Conway.Specification.Gov.hasParentE?
d_hasParentE'63'_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_2140 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1222
              (coe v1) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> coe
                MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_608
                      (coe v0)))
                (coe
                   (\ v6 ->
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                (coe v5) (coe v2)
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Gov.hasParent?
d_hasParent'63'_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_2174 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1210
              (coe v3) (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                (coe d_hasParentE'63'_2140 (coe v0) (coe v1) (coe v6) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                   (coe
                      (\ v7 ->
                         coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                           (coe
                              MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_608
                                    (coe v0)))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)) (coe v6))
                           (coe
                              du_Overlap'63'_1920
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_876
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1064
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
                              (coe v3))))
                   (coe v2))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Specification.Gov.hasParent'
d_hasParent''_2214 a0 a1 a2 a3 a4 = ()
newtype T_hasParent''_2214 = C_HasParent''_2224 AgdaAny
-- Ledger.Conway.Specification.Gov.hasParent?'
d_hasParent'63'''_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_836 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_2234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
         (coe C_HasParent''_2224)
         (coe
            (\ v5 ->
               case coe v5 of
                 C_HasParent''_2224 v10 -> coe v10
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe
            d_hasParent'63'_2174 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Conway.Specification.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_2246 v0 v1 v2 v3
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
             (coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_608
                   (coe v0)))
             (coe
                (\ v4 ->
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
             (coe v2) (coe v3)
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                       (coe
                          MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_608
                                (coe v0)))
                          (coe
                             (\ v8 ->
                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                          (coe v6) (coe v2))
                       (coe
                          d_'91'_connects_to_'63''93'_2246 (coe v0) (coe v5) (coe v7)
                          (coe v3)))
                    (coe
                       d_'91'_connects_to_'63''93'_2246 (coe v0) (coe v5) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_2270 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
              (coe
                 MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.du_unique'63'_66
                 (coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_608
                                (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_DecEq'45'TxId_608
                                (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))
                 v4)
              (coe
                 d_'91'_connects_to_'63''93'_2246 (coe v0) (coe v4) (coe v1)
                 (coe v2))))
      (coe
         MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_subpermutations_42
         (coe v3))
-- Ledger.Conway.Specification.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_2288 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Function.Properties.Equivalence.du_sym_48
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_154
               (coe
                  MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_subpermutations_42
                  (coe v3)))))
      (d_any'63''45'connecting'45'subperm_2270
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_2300 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Function.Properties.Equivalence.du_sym_48
         (coe
            MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_'8707'uniqueSubset'8660''8707'uniqueSubperm_904
            (coe ()) (coe v3)))
      (d_'8707''63''45'connecting'45'subperm_2288
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Specification.Gov.enactable?
d_enactable'63'_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_2310 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1222
                     (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_876
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1064
                           (coe v5))) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
                       (coe
                          MAlonzo.Code.Function.Properties.Equivalence.du_sym_48
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1308
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe v2)))
                       (d_'8707''63''45'connecting'45'subset_2300
                          (coe v0) (coe v4) (coe v7) (coe v2))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.allEnactable?
d_allEnactable'63'_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_2346 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_510
      (coe
         d_enactable'63'_2310 (coe v0) (coe v1)
         (coe du_getAidPairsList_2048 (coe v2)))
      (coe v2)
-- Ledger.Conway.Specification.Gov.allEnactable'
d_allEnactable''_2354 a0 a1 a2 = ()
newtype T_allEnactable''_2354
  = C_AllEnactable''_2360 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Ledger.Conway.Specification.Gov.allEnactable?'
d_allEnactable'63'''_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_2366 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
         (coe C_AllEnactable''_2360)
         (coe
            (\ v3 ->
               case coe v3 of
                 C_AllEnactable''_2360 v6 -> coe v6
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe d_allEnactable'63'_2346 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Specification.Gov.maxAllEnactable
d_maxAllEnactable_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_2372 v0 v1
  = coe
      MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_maxsublists'8871'P_758
      (coe d_allEnactable'63'_2346 (coe v0) (coe v1))
-- Ledger.Conway.Specification.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_2382 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_512
         (d_allEnactable'63'_2346 (coe v0) (coe v1)) v3
         (coe
            MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_sublists_22
            (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_512
               (\ v5 ->
                  coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                    (coe MAlonzo.Code.Data.List.Base.du_length_268 v5)
                    (coe
                       MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_maxlen_18
                       (coe
                          MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_sublists'8871'P_752
                          (coe d_allEnactable'63'_2346 (coe v0) (coe v1)) (coe v2))))
               v3
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_648
                  (coe d_allEnactable'63'_2346 (coe v0) (coe v1))
                  (coe
                     MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_sublists_22
                     (coe v2)))
               v4)))
-- Ledger.Conway.Specification.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8712''45'maxAllEnactable'8594'maxLength_2402 v0 v1 v2 ~v3 ~v4 v5
                                                v6 ~v7
  = du_'8712''45'maxAllEnactable'8594'maxLength_2402 v0 v1 v2 v5 v6
du_'8712''45'maxAllEnactable'8594'maxLength_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8712''45'maxAllEnactable'8594'maxLength_2402 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_'8712''45'maxlen'45''8804'_44
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_648
         (coe d_allEnactable'63'_2346 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_sublists_22
            (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_510
         (d_allEnactable'63'_2346 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_sublists_22
            (coe v2))
         v3 v4)
-- Ledger.Conway.Specification.Gov.actionValid
d_actionValid_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  ()
d_actionValid_2424 = erased
-- Ledger.Conway.Specification.Gov.actionWellFormed
d_actionWellFormed_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  ()
d_actionWellFormed_2452 = erased
-- Ledger.Conway.Specification.Gov.actionValid?
d_actionValid'63'_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionValid'63'_2472 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_880 v6 v7
        -> case coe v6 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                (coe v0)))))
                    (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                (coe v0))))
                       (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             (\ v8 ->
                                coe
                                  MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_274
                                  (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_656
                                        (coe v0)))
                                  (coe
                                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                     (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_656
                                           (coe v0)))
                                     (\ v9 v10 -> v9) v4 v8)
                                  (coe
                                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                     (\ v9 v10 -> v10)
                                     (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_656
                                           (coe v0)))
                                     v4 v8)))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_range_588
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                          (coe
                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                     (let v9
                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                                      (coe v0))) in
                                      coe
                                        (let v10
                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                                      (coe v0)) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                              (coe v9) (coe v10))))
                                     (coe v8)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_470
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                             (coe
                                MAlonzo.Code.Axiom.Set.du__'8745'__732
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                     (let v9
                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                                      (coe v0))) in
                                      coe
                                        (let v10
                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                                      (coe v0)) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                              (coe v9) (coe v10))))
                                     (coe v8)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du__'8745'__732
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                           erased
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                                       (coe v0))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                                    (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))))
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'8709'_470
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                (coe v0)))))
                    (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                (coe v0)))))
                    (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                (coe v0)))))
                    (coe v2) (coe v3)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                (coe v0))))
                       (coe v2) (coe v3))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          (\ v8 ->
                             coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (let v9
                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                                (coe v0))) in
                                coe
                                  (let v10
                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                        (coe v9) (coe v10))))
                               (coe v8) (coe v1)))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_426
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (\ v8 ->
                             MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                               (coe v8))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v7))))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_610
                                (coe v0)))))
                    (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov.actionWellFormed?
d_actionWellFormed'63'_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_870 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2476 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_'10214'_'44'_'10215''7501''7491'_880 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NoConfidence_838
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_UpdateCommittee_840
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_NewConstitution_842
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TriggerHardFork_844
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_ChangePParams_846
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_582))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1496
                             (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1176
                                   (coe v0)))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8709'_470
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                       (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1502
                       (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_govParams_1176
                             (coe v0)))
                       v3)
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_TreasuryWithdrawal_848
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_14
                    (coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1194
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222)
                                  v4)
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_globalConstants_1194
                                     (coe v0)))))
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_586
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1686
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                               (coe
                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22) (coe v4)
                                  (coe (0 :: Integer)))
                               (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                       (coe
                          MAlonzo.Code.Class.IsSet.du_range_588
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v3)))
             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_Info_850
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__2484 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'10632'__2484
  = C_GOV'45'Vote_2486 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1046
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_2498 AgdaAny
                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Specification.Gov._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  T_GovEnv_1842 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2500 = erased
