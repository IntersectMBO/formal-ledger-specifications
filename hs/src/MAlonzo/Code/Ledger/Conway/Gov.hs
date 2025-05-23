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

module MAlonzo.Code.Ledger.Conway.Gov where

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
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
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

-- _._+ᵉ_
d__'43''7497'__10 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__10 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
         (coe v0))
-- _.Anchor
d_Anchor_32 a0 = ()
-- _.Credential
d_Credential_46 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_92 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_92 ~v0 = du_DecEq'45'GovRole_92
du_DecEq'45'GovRole_92 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_92
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_884
-- _.DecEq-PParamGroup
d_DecEq'45'PParamGroup_104 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_104 ~v0 = du_DecEq'45'PParamGroup_104
du_DecEq'45'PParamGroup_104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_104
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_584
-- _.Epoch
d_Epoch_148 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Epoch_148 = erased
-- _.GovAction
d_GovAction_154 a0 = ()
-- _.GovActionID
d_GovActionID_158 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_GovActionID_158 = erased
-- _.GovActionState
d_GovActionState_160 a0 = ()
-- _.GovActionType
d_GovActionType_162 a0 = ()
-- _.GovProposal
d_GovProposal_166 a0 = ()
-- _.GovVote
d_GovVote_170 a0 = ()
-- _.HasCast-GovVote
d_HasCast'45'GovVote_178 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_178 ~v0 = du_HasCast'45'GovVote_178
du_HasCast'45'GovVote_178 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_178
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_890
-- _.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_188 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_188 ~v0
  = du_HasCredential'45'RwdAddr_188
du_HasCredential'45'RwdAddr_188 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
du_HasCredential'45'RwdAddr_188
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- _.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_196 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_196 ~v0 = du_HasNetworkId'45'RwdAddr_196
du_HasNetworkId'45'RwdAddr_196 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
du_HasNetworkId'45'RwdAddr_196
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- _.NeedsHash
d_NeedsHash_266 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  ()
d_NeedsHash_266 = erased
-- _.NetworkId
d_NetworkId_272 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny
d_NetworkId_272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
         (coe v0))
-- _.PParams
d_PParams_294 a0 = ()
-- _.RwdAddr
d_RwdAddr_338 a0 = ()
-- _.ScriptHash
d_ScriptHash_354 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_ScriptHash_354 = erased
-- _.Voter
d_Voter_466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Voter_466 = erased
-- _.preoEpoch
d_preoEpoch_606 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
         (coe v0))
-- _.pvCanFollow
d_pvCanFollow_612 a0 a1 a2 = ()
-- _.Anchor.hash
d_hash_686 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752 ->
  AgdaAny
d_hash_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_hash_760 (coe v0)
-- _.Anchor.url
d_url_688 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_url_758 (coe v0)
-- _.GovAction.gaData
d_gaData_736 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  AgdaAny
d_gaData_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_788 (coe v0)
-- _.GovAction.gaType
d_gaType_738 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762
d_gaType_738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_786 (coe v0)
-- _.GovActionState.action
d_action_742 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780
d_action_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_744 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  AgdaAny
d_expiresIn_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_876
      (coe v0)
-- _.GovActionState.prevAction
d_prevAction_746 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  AgdaAny
d_prevAction_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_880
      (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_748 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_874
      (coe v0)
-- _.GovActionState.votes
d_votes_750 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_872 (coe v0)
-- _.GovProposal.action
d_action_786 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780
d_action_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_848 (coe v0)
-- _.GovProposal.anchor
d_anchor_788 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752
d_anchor_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_858 (coe v0)
-- _.GovProposal.deposit
d_deposit_790 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  Integer
d_deposit_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_854 (coe v0)
-- _.GovProposal.policy
d_policy_792 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  Maybe AgdaAny
d_policy_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_852 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_794 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  AgdaAny
d_prevAction_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_850
      (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_796 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_856
      (coe v0)
-- _.GovVote.anchor
d_anchor_808 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_752
d_anchor_808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_832 (coe v0)
-- _.GovVote.gid
d_gid_810 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_826 (coe v0)
-- _.GovVote.vote
d_vote_812 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_808
d_vote_812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_830 (coe v0)
-- _.GovVote.voter
d_voter_814 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_816 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_828 (coe v0)
-- _.GovernanceActions.Anchor
d_Anchor_818 a0 = ()
-- _.GovernanceActions.GovAction
d_GovAction_834 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_840 a0 = ()
-- _.GovernanceActions.GovActionType
d_GovActionType_842 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_844 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_848 a0 = ()
-- _.PParams.Emax
d_Emax_1054 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_Emax_1054 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- _.PParams.a
d_a_1056 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_1056 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- _.PParams.a0
d_a0_1058 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1058 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- _.PParams.b
d_b_1060 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_1060 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1062 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1064 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_1064 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1066 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_1066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1068 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1070 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_costmdls_1070 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1072 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_drepActivity_1072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1074 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_1074 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1076 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_1076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1078 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_1078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1080 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_1080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1082 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1084 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxBlockExUnits_1084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1086 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_1086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1088 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_1088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_1090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_1092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_1094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_maxTxExUnits_1096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_1098 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_1104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- _.PParams.nopt
d_nopt_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_1112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- _.PParams.prices
d_prices_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> AgdaAny
d_prices_1114 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- _.PParams.pv
d_pv_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1116 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1122 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- _.RwdAddr.net
d_net_1320 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1320 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- _.RwdAddr.stake
d_stake_1322 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1322 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Gov._.Vote
d_Vote_1636 a0 = ()
-- Ledger.Conway.Gov._.EnactState
d_EnactState_1666 a0 = ()
-- Ledger.Conway.Gov._.EnactState.cc
d_cc_1710 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1710 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_934 (coe v0)
-- Ledger.Conway.Gov._.EnactState.constitution
d_constitution_1712 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1712 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_936 (coe v0)
-- Ledger.Conway.Gov._.EnactState.pparams
d_pparams_1714 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1714 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_940 (coe v0)
-- Ledger.Conway.Gov._.EnactState.pv
d_pv_1716 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1716 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_938 (coe v0)
-- Ledger.Conway.Gov._.EnactState.withdrawals
d_withdrawals_1718 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1718 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_942 (coe v0)
-- Ledger.Conway.Gov._.canVote
d_canVote_1776 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovRole_732 -> ()
d_canVote_1776 = erased
-- Ledger.Conway.Gov._.expired
d_expired_1786 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860 ->
  ()
d_expired_1786 = erased
-- Ledger.Conway.Gov._.CertState
d_CertState_1870 a0 = ()
-- Ledger.Conway.Gov._.CertState.dState
d_dState_2064 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1080
d_dState_2064 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_dState_1204 (coe v0)
-- Ledger.Conway.Gov._.CertState.gState
d_gState_2066 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1164
d_gState_2066 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1208 (coe v0)
-- Ledger.Conway.Gov._.CertState.pState
d_pState_2068 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136
d_pState_2068 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pState_1206 (coe v0)
-- Ledger.Conway.Gov.GovState
d_GovState_2174 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_GovState_2174 = erased
-- Ledger.Conway.Gov.HasGovState
d_HasGovState_2180 a0 a1 a2 = ()
newtype T_HasGovState_2180
  = C_HasGovState'46'constructor_4427 (AgdaAny ->
                                       [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14])
-- Ledger.Conway.Gov.HasGovState.GovStateOf
d_GovStateOf_2188 ::
  T_HasGovState_2180 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2188 v0
  = case coe v0 of
      C_HasGovState'46'constructor_4427 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov._.GovStateOf
d_GovStateOf_2192 ::
  T_HasGovState_2180 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_GovStateOf_2192 v0 = coe d_GovStateOf_2188 (coe v0)
-- Ledger.Conway.Gov.GovEnv
d_GovEnv_2194 a0 = ()
data T_GovEnv_2194
  = C_GovEnv'46'constructor_4571 AgdaAny AgdaAny
                                 MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 (Maybe AgdaAny)
                                 MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
                                 MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196
                                 [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
-- Ledger.Conway.Gov.GovEnv.txid
d_txid_2210 :: T_GovEnv_2194 -> AgdaAny
d_txid_2210 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4571 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.GovEnv.epoch
d_epoch_2212 :: T_GovEnv_2194 -> AgdaAny
d_epoch_2212 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4571 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.GovEnv.pparams
d_pparams_2214 ::
  T_GovEnv_2194 -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pparams_2214 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4571 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.GovEnv.ppolicy
d_ppolicy_2216 :: T_GovEnv_2194 -> Maybe AgdaAny
d_ppolicy_2216 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4571 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.GovEnv.enactState
d_enactState_2218 ::
  T_GovEnv_2194 -> MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
d_enactState_2218 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4571 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.GovEnv.certState
d_certState_2220 ::
  T_GovEnv_2194 -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1196
d_certState_2220 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4571 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.GovEnv.rewardCreds
d_rewardCreds_2222 ::
  T_GovEnv_2194 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_rewardCreds_2222 v0
  = case coe v0 of
      C_GovEnv'46'constructor_4571 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.HasCast-GovEnv
d_HasCast'45'GovEnv_2224 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2224 ~v0 = du_HasCast'45'GovEnv_2224
du_HasCast'45'GovEnv_2224 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2224
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
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
                                 (2194 :: Integer) (6220543866350656596 :: Integer)
                                 "Ledger.Conway.Gov.GovEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1242 :: Integer) (6079094804464265640 :: Integer)
                                 "Ledger.Conway.Transaction.TransactionStructure.TxId"
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
                                    (2194 :: Integer) (6220543866350656596 :: Integer)
                                    "Ledger.Conway.Gov.GovEnv"
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
                                    (148 :: Integer) (6220543866350656596 :: Integer) "_.Epoch"
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
                                       (2194 :: Integer) (6220543866350656596 :: Integer)
                                       "Ledger.Conway.Gov.GovEnv"
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
                                       (294 :: Integer) (6220543866350656596 :: Integer) "_.PParams"
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
                                          (2194 :: Integer) (6220543866350656596 :: Integer)
                                          "Ledger.Conway.Gov.GovEnv"
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
                                                      (354 :: Integer)
                                                      (6220543866350656596 :: Integer)
                                                      "_.ScriptHash"
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
                                             (2194 :: Integer) (6220543866350656596 :: Integer)
                                             "Ledger.Conway.Gov.GovEnv"
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
                                             (1666 :: Integer) (6220543866350656596 :: Integer)
                                             "Ledger.Conway.Gov._.EnactState"
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
                                                (2194 :: Integer) (6220543866350656596 :: Integer)
                                                "Ledger.Conway.Gov.GovEnv"
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
                                                (1870 :: Integer) (6220543866350656596 :: Integer)
                                                "Ledger.Conway.Gov._.CertState"
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
                                                   (2194 :: Integer)
                                                   (6220543866350656596 :: Integer)
                                                   "Ledger.Conway.Gov.GovEnv"
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
                                                   (126 :: Integer) (9254951203007797098 :: Integer)
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
                                                            (46 :: Integer)
                                                            (6220543866350656596 :: Integer)
                                                            "_.Credential"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
         (coe C_GovEnv'46'constructor_4571))
-- Ledger.Conway.Gov.govActionPriority
d_govActionPriority_2252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  Integer
d_govActionPriority_2252 ~v0 v1 = du_govActionPriority_2252 v1
du_govActionPriority_2252 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  Integer
du_govActionPriority_2252 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
        -> coe (0 :: Integer)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
        -> coe (1 :: Integer)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
        -> coe (2 :: Integer)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
        -> coe (3 :: Integer)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
        -> coe (4 :: Integer)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
        -> coe (5 :: Integer)
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
        -> coe (6 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.Overlap
d_Overlap_2254 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  ()
d_Overlap_2254 = erased
-- Ledger.Conway.Gov.Overlap?
d_Overlap'63'_2264 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Overlap'63'_2264 ~v0 v1 v2 = du_Overlap'63'_2264 v1 v2
du_Overlap'63'_2264 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Overlap'63'_2264 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
        -> case coe v1 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.insertGovAction
d_insertGovAction_2266 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_insertGovAction_2266 ~v0 v1 v2 = du_insertGovAction_2266 v1 v2
du_insertGovAction_2266 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_insertGovAction_2266 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Class.ToBool.du_if_then_else__42
                           (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                              (coe
                                 du_govActionPriority_2252
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_786
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878
                                       (coe v5))))
                              (coe
                                 du_govActionPriority_2252
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_786
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878
                                       (coe v7)))))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                                   (coe du_insertGovAction_2266 (coe v3) (coe v1))))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.mkGovStatePair
d_mkGovStatePair_2282 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkGovStatePair_2282 ~v0 v1 v2 v3 v4 v5
  = du_mkGovStatePair_2282 v1 v2 v3 v4 v5
du_mkGovStatePair_2282 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkGovStatePair_2282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.C_GovActionState'46'constructor_5213
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
         (coe v2) (coe v0) (coe v3) (coe v4))
-- Ledger.Conway.Gov.addAction
d_addAction_2296 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_2296 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_2296 v1 v2 v3 v4 v5 v6
du_addAction_2296 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_2296 v0 v1 v2 v3 v4 v5
  = coe
      du_insertGovAction_2266 (coe v0)
      (coe
         du_mkGovStatePair_2282 (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Conway.Gov.addVote
d_addVote_2310 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_808 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_2310 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (coe du_modifyVotes_2324 (coe v0) (coe v2) (coe v3) (coe v4)) v1
-- Ledger.Conway.Gov._.modifyVotes
d_modifyVotes_2324 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_808 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_modifyVotes_2324 v0 ~v1 v2 v3 v4 v5
  = du_modifyVotes_2324 v0 v2 v3 v4 v5
du_modifyVotes_2324 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_808 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_modifyVotes_2324 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe
         MAlonzo.Code.Ledger.Conway.GovernanceActions.C_GovActionState'46'constructor_5213
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__42
            (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_108) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                     (coe v0))
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1))
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_insert_956
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1470
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe
                             MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_884)
                          (coe
                             MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                             (coe
                                MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                   (coe v0))))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_872
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                    (coe v2) (coe v3)))
            (coe
               (\ v5 ->
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_872
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_874
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_876
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_880
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Ledger.Conway.Gov.isRegistered
d_isRegistered_2332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_GovEnv_2194 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isRegistered_2332 = erased
-- Ledger.Conway.Gov.validHFAction
d_validHFAction_2352 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_834 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 -> ()
d_validHFAction_2352 = erased
-- Ledger.Conway.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__2370 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'10632'__2370
  = C_GOV'45'Vote_2826 MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_860
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_2838 AgdaAny
                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Gov._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2372 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_GovEnv_2194 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2372 = erased
-- Ledger.Conway.Gov.getAidPairsList
d_getAidPairsList_2374 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_2374 ~v0 v1 = du_getAidPairsList_2374 v1
du_getAidPairsList_2374 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_2374 v0
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
                 MAlonzo.Code.Ledger.Conway.Enact.du_getHash_974
                 (coe
                    MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_786
                    (coe
                       MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
                 (coe
                    MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_880
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))))
      (coe v0)
-- Ledger.Conway.Gov._connects_to_
d__connects_to__2386 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__2386 = erased
-- Ledger.Conway.Gov.enactable
d_enactable_2402 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_2402 = erased
-- Ledger.Conway.Gov.allEnactable
d_allEnactable_2420 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_2420 = erased
-- Ledger.Conway.Gov.hasParentE
d_hasParentE_2426 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  ()
d_hasParentE_2426 = erased
-- Ledger.Conway.Gov.hasParent
d_hasParent_2440 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  AgdaAny -> ()
d_hasParent_2440 = erased
-- Ledger.Conway.Gov.hasParentE?
d_hasParentE'63'_2466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_2466 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Conway.Enact.du_getHashES_986 (coe v1)
              (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> coe
                MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
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
-- Ledger.Conway.Gov.hasParent?
d_hasParent'63'_2500 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_2500 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Ledger.Conway.Enact.du_getHash_974 (coe v3)
              (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
                (coe d_hasParentE'63'_2466 (coe v0) (coe v1) (coe v6) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                   (coe
                      (\ v7 ->
                         coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                           (coe
                              MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                                    (coe v0)))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)) (coe v6))
                           (coe
                              du_Overlap'63'_2264
                              (coe
                                 MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_786
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878
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
-- Ledger.Conway.Gov.hasParent'
d_hasParent''_2540 a0 a1 a2 a3 a4 = ()
newtype T_hasParent''_2540 = C_HasParent''_2550 AgdaAny
-- Ledger.Conway.Gov.hasParent?'
d_hasParent'63'''_2560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_762 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_2560 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_HasParent''_2550)
         (coe
            (\ v5 ->
               case coe v5 of
                 C_HasParent''_2550 v10 -> coe v10
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe
            d_hasParent'63'_2500 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Conway.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_2572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_2572 v0 v1 v2 v3
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
             (coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
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
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                       (coe
                          MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                                (coe v0)))
                          (coe
                             (\ v8 ->
                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                          (coe v6) (coe v2))
                       (coe
                          d_'91'_connects_to_'63''93'_2572 (coe v0) (coe v5) (coe v7)
                          (coe v3)))
                    (coe
                       d_'91'_connects_to_'63''93'_2572 (coe v0) (coe v5) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_2596 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_2596 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
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
                             (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                                (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
                                (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))
                 v4)
              (coe
                 d_'91'_connects_to_'63''93'_2572 (coe v0) (coe v4) (coe v1)
                 (coe v2))))
      (coe
         MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_subpermutations_42
         (coe v3))
-- Ledger.Conway.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_2614 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_2614 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Function.Properties.Equivalence.du_sym_48
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_146
               (coe
                  MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_subpermutations_42
                  (coe v3)))))
      (d_any'63''45'connecting'45'subperm_2596
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_2626 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_2626 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Function.Properties.Equivalence.du_sym_48
         (coe
            MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_'8707'uniqueSubset'8660''8707'uniqueSubperm_904
            (coe ()) (coe v3)))
      (d_'8707''63''45'connecting'45'subperm_2614
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Gov.enactable?
d_enactable'63'_2636 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_2636 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Ledger.Conway.Enact.du_getHashES_986 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_786
                        (coe
                           MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_878
                           (coe v5))) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
                       (coe
                          MAlonzo.Code.Function.Properties.Equivalence.du_sym_48
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1070
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe v2)))
                       (d_'8707''63''45'connecting'45'subset_2626
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
-- Ledger.Conway.Gov.allEnactable?
d_allEnactable'63'_2672 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_2672 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_510
      (coe
         d_enactable'63'_2636 (coe v0) (coe v1)
         (coe du_getAidPairsList_2374 (coe v2)))
      (coe v2)
-- Ledger.Conway.Gov.allEnactable'
d_allEnactable''_2680 a0 a1 a2 = ()
newtype T_allEnactable''_2680
  = C_AllEnactable''_2686 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Ledger.Conway.Gov.allEnactable?'
d_allEnactable'63'''_2692 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_2692 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_AllEnactable''_2686)
         (coe
            (\ v3 ->
               case coe v3 of
                 C_AllEnactable''_2686 v6 -> coe v6
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe d_allEnactable'63'_2672 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Gov.maxAllEnactable
d_maxAllEnactable_2698 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_2698 v0 v1
  = coe
      MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_maxsublists'8871'P_758
      (coe d_allEnactable'63'_2672 (coe v0) (coe v1))
-- Ledger.Conway.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_2708 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_2708 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_512
         (d_allEnactable'63'_2672 (coe v0) (coe v1)) v3
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
                    (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)
                    (coe
                       MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_maxlen_18
                       (coe
                          MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_sublists'8871'P_752
                          (coe d_allEnactable'63'_2672 (coe v0) (coe v1)) (coe v2))))
               v3
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_664
                  (coe d_allEnactable'63'_2672 (coe v0) (coe v1))
                  (coe
                     MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_sublists_22
                     (coe v2)))
               v4)))
-- Ledger.Conway.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_2728 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8712''45'maxAllEnactable'8594'maxLength_2728 v0 v1 v2 ~v3 ~v4 v5
                                                v6 ~v7
  = du_'8712''45'maxAllEnactable'8594'maxLength_2728 v0 v1 v2 v5 v6
du_'8712''45'maxAllEnactable'8594'maxLength_2728 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8712''45'maxAllEnactable'8594'maxLength_2728 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Qstdlib.Data.List.Subpermutations.Properties.du_'8712''45'maxlen'45''8804'_44
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_664
         (coe d_allEnactable'63'_2672 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_sublists_22
            (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_510
         (d_allEnactable'63'_2672 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Qstdlib.Data.List.Subpermutations.du_sublists_22
            (coe v2))
         v3 v4)
-- Ledger.Conway.Gov.actionValid
d_actionValid_2750 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 -> ()
d_actionValid_2750 = erased
-- Ledger.Conway.Gov.actionWellFormed
d_actionWellFormed_2794 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 -> ()
d_actionWellFormed_2794 = erased
-- Ledger.Conway.Gov.actionValid?
d_actionValid'63'_2814 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18] ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionValid'63'_2814 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_'10214'_'44'_'10215''7501''7491'_790 v6 v7
        -> case coe v6 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))))
                    (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
                       (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                       (coe
                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe
                             (\ v8 ->
                                coe
                                  MAlonzo.Code.Class.HasOrder.Core.d_dec'45''60'_268
                                  (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
                                        (coe v0)))
                                  (coe
                                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                     (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
                                           (coe v0)))
                                     (\ v9 v10 -> v9) v4 v8)
                                  (coe
                                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                     (\ v9 v10 -> v10)
                                     (MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
                                           (coe v0)))
                                     v4 v8)))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_range_550
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                          (coe
                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                              (coe v0))))
                                     (coe v8)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_442
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                             (let v8
                                    = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                              coe
                                (coe
                                   MAlonzo.Code.Axiom.Set.du__'8745'__704
                                   (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v8))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                      erased
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                               (coe v0)))))
                                   (coe
                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe
                                (\ v8 ->
                                   coe
                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                              (coe v0))))
                                     (coe v8)
                                     (let v9
                                            = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                      coe
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du__'8745'__704
                                           (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v9))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                              erased
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                          (coe v0))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                       (coe v0)))))
                                           (coe
                                              MAlonzo.Code.Class.IsSet.du_dom_548
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe v7)))))))
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'8709'_442
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))))
                    (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))))
                    (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))))
                    (coe v2) (coe v3)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
                       (coe v2) (coe v3))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          (\ v8 ->
                             coe
                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                           (coe v0))))
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                        (coe v0))))
                               (coe v8) (coe v1)))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (\ v8 -> MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v8))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_548
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v7))))
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                             (coe
                                MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))))
                    (coe v2) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Gov.actionWellFormed?
d_actionWellFormed'63'_2818 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_780 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2818 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.Conway.GovernanceActions.C_'10214'_'44'_'10215''7501''7491'_790 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NoConfidence_764
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_UpdateCommittee_766
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_NewConstitution_768
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TriggerHF_770
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_ChangePParams_772
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                             (coe
                                MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_584))
                          (coe
                             MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
                             (MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2328
                                   (coe v0)))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8709'_442
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                       (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                    (coe
                       MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
                       (MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
                          (coe
                             MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2328 (coe v0)))
                       v3)
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_TreasuryWdrl_774
               -> coe
                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                    (coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128)
                                  v4)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
                                     (coe v0)))))
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v3)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1638
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                               (coe
                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22) (coe v4)
                                  (coe (0 :: Integer)))
                               (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
                       (coe
                          MAlonzo.Code.Class.IsSet.du_range_550
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v3)))
             MAlonzo.Code.Ledger.Conway.GovernanceActions.C_Info_776
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
