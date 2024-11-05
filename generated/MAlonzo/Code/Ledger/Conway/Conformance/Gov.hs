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

module MAlonzo.Code.Ledger.Conway.Conformance.Gov where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
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
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext
import qualified MAlonzo.Code.Data.List.Ext.Properties2
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._+ᵉ_
d__'43''7497'__12 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__12 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.DecEq-GovRole
d_DecEq'45'GovRole_90 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_90 ~v0 = du_DecEq'45'GovRole_90
du_DecEq'45'GovRole_90 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_90
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824
-- _.Epoch
d_Epoch_150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_150 = erased
-- _.GovAction
d_GovAction_156 a0 = ()
-- _.GovActionID
d_GovActionID_158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_158 = erased
-- _.GovActionState
d_GovActionState_160 a0 = ()
-- _.GovProposal
d_GovProposal_164 a0 = ()
-- _.GovVote
d_GovVote_168 a0 = ()
-- _.NeedsHash
d_NeedsHash_208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_NeedsHash_208 = erased
-- _.NetworkId
d_NetworkId_214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_214 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0))
-- _.PParams
d_PParams_234 a0 = ()
-- _.RwdAddr
d_RwdAddr_274 a0 = ()
-- _.ScriptHash
d_ScriptHash_290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_290 = erased
-- _.Voter
d_Voter_404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_404 = erased
-- _.actionWellFormed
d_actionWellFormed_410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_actionWellFormed_410 = erased
-- _.preoEpoch
d_preoEpoch_540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_540 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.pvCanFollow
d_pvCanFollow_546 a0 a1 a2 = ()
-- _.GovActionState.action
d_action_676 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_676 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v0)
-- _.GovActionState.expiresIn
d_expiresIn_678 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_expiresIn_678 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v0)
-- _.GovActionState.prevAction
d_prevAction_680 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_prevAction_680 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v0)
-- _.GovActionState.returnAddr
d_returnAddr_682 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_682 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- _.GovActionState.votes
d_votes_684 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_684 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v0)
-- _.GovProposal.action
d_action_716 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_716 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- _.GovProposal.anchor
d_anchor_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- _.GovProposal.deposit
d_deposit_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- _.GovProposal.policy
d_policy_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe AgdaAny
d_policy_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_724 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_724 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_726 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_726 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.GovVote.anchor
d_anchor_738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_738 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- _.GovVote.gid
d_gid_740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_740 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- _.GovVote.vote
d_vote_742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_742 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- _.GovVote.voter
d_voter_744 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_744 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- _.GovernanceActions.GovAction
d_GovAction_762 a0 = ()
-- _.GovernanceActions.GovActionState
d_GovActionState_766 a0 = ()
-- _.GovernanceActions.GovProposal
d_GovProposal_768 a0 = ()
-- _.GovernanceActions.GovVote
d_GovVote_772 a0 = ()
-- _.PParams.Emax
d_Emax_920 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_920 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_922 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_922 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_924 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_926 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_926 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_968 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_972 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_972 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_974 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_974 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_978 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_980 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_982 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_984 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.RwdAddr.net
d_net_1176 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1176 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1178 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1178 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Gov._.Vote
d_Vote_1498 a0 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState
d_EnactState_1528 a0 = ()
-- Ledger.Conway.Conformance.Gov._.EnactState.cc
d_cc_1564 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1564 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.constitution
d_constitution_1566 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1566 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pparams
d_pparams_1568 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1568 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.pv
d_pv_1570 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1570 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v0)
-- Ledger.Conway.Conformance.Gov._.EnactState.withdrawals
d_withdrawals_1572 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1572 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v0)
-- Ledger.Conway.Conformance.Gov._.canVote
d_canVote_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_686 -> ()
d_canVote_1620 = erased
-- Ledger.Conway.Conformance.Gov._.CertState
d_CertState_1720 a0 = ()
-- Ledger.Conway.Conformance.Gov._.CertState.dState
d_dState_1864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.gState
d_gState_1866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070
d_gState_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098 (coe v0)
-- Ledger.Conway.Conformance.Gov._.CertState.pState
d_pState_1868 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1096 (coe v0)
-- Ledger.Conway.Conformance.Gov.GovState
d_GovState_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_1932 = erased
-- Ledger.Conway.Conformance.Gov.GovEnv
d_GovEnv_1934 a0 = ()
data T_GovEnv_1934
  = C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1960 AgdaAny
                                                          AgdaAny
                                                          MAlonzo.Code.Ledger.PParams.T_PParams_244
                                                          (Maybe AgdaAny)
                                                          MAlonzo.Code.Ledger.Enact.T_EnactState_852
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
-- Ledger.Conway.Conformance.Gov.GovEnv.txid
d_txid_1948 :: T_GovEnv_1934 -> AgdaAny
d_txid_1948 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1960 v1 v2 v3 v4 v5 v6
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.epoch
d_epoch_1950 :: T_GovEnv_1934 -> AgdaAny
d_epoch_1950 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1960 v1 v2 v3 v4 v5 v6
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.pparams
d_pparams_1952 ::
  T_GovEnv_1934 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1952 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1960 v1 v2 v3 v4 v5 v6
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.ppolicy
d_ppolicy_1954 :: T_GovEnv_1934 -> Maybe AgdaAny
d_ppolicy_1954 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1960 v1 v2 v3 v4 v5 v6
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.enactState
d_enactState_1956 ::
  T_GovEnv_1934 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_1956 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1960 v1 v2 v3 v4 v5 v6
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GovEnv.certState
d_certState_1958 ::
  T_GovEnv_1934 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_1958 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1960 v1 v2 v3 v4 v5 v6
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.govActionPriority
d_govActionPriority_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> Integer
d_govActionPriority_1988 ~v0 v1 = du_govActionPriority_1988 v1
du_govActionPriority_1988 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> Integer
du_govActionPriority_1988 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_718
        -> coe (0 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_UpdateCommittee_720 v1 v2 v3
        -> coe (1 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_722 v1 v2
        -> coe (2 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_724 v1
        -> coe (3 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_726 v1
        -> coe (4 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_728 v1
        -> coe (5 :: Integer)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_730
        -> coe (6 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov._∼_
d__'8764'__1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> ()
d__'8764'__1990 = erased
-- Ledger.Conway.Conformance.Gov._≈ᵍ_
d__'8776''7501'__1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d__'8776''7501'__1996 = erased
-- Ledger.Conway.Conformance.Gov._∼?_
d__'8764''63'__2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8764''63'__2006 ~v0 v1 v2 = du__'8764''63'__2006 v1 v2
du__'8764''63'__2006 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8764''63'__2006 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
      (coe
         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v0)
               (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v1)
               (coe (1 :: Integer))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v0)
               (coe (1 :: Integer)))
            (coe
               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v1)
               (coe (0 :: Integer)))))
-- Ledger.Conway.Conformance.Gov._≈?_
d__'8776''63'__2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8776''63'__2016 ~v0 v1 v2 = du__'8776''63'__2016 v1 v2
du__'8776''63'__2016 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8776''63'__2016 v0 v1
  = coe
      du__'8764''63'__2006 (coe du_govActionPriority_1988 (coe v0))
      (coe du_govActionPriority_1988 (coe v1))
-- Ledger.Conway.Conformance.Gov.insertGovAction
d_insertGovAction_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_insertGovAction_2022 ~v0 v1 v2 = du_insertGovAction_2022 v1 v2
du_insertGovAction_2022 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_insertGovAction_2022 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_286 (coe v1)
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Class.ToBool.du_if_then_else__46
                           (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Dec_98)
                           (coe
                              MAlonzo.Code.Class.HasOrder.Core.du__'8804''63'__62
                              (\ v8 v9 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                   (coe
                                      MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v8)
                                      (coe v9)))
                              (coe
                                 du_govActionPriority_1988
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v5)))
                              (coe
                                 du_govActionPriority_1988
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v7))))
                           (coe
                              MAlonzo.Code.Level.C_lift_20
                              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                                   (coe du_insertGovAction_2022 (coe v3) (coe v1))))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.mkGovStatePair
d_mkGovStatePair_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkGovStatePair_2038 ~v0 v1 v2 v3 v4 v5
  = du_mkGovStatePair_2038 v1 v2 v3 v4 v5
du_mkGovStatePair_2038 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkGovStatePair_2038 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_7003
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
         (coe v2) (coe v0) (coe v3) (coe v4))
-- Ledger.Conway.Conformance.Gov.addAction
d_addAction_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_2052 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_2052 v1 v2 v3 v4 v5 v6
du_addAction_2052 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_2052 v0 v1 v2 v3 v4 v5
  = coe
      du_insertGovAction_2022 (coe v0)
      (coe
         du_mkGovStatePair_2038 (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Conway.Conformance.Gov.addVote
d_addVote_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_2066 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (coe du_modifyVotes_2080 (coe v0) (coe v2) (coe v3) (coe v4)) v1
-- Ledger.Conway.Conformance.Gov._.modifyVotes
d_modifyVotes_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_modifyVotes_2080 v0 ~v1 v2 v3 v4 v5
  = du_modifyVotes_2080 v0 v2 v3 v4 v5
du_modifyVotes_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_modifyVotes_2080 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_7003
         (coe
            MAlonzo.Code.Class.ToBool.du_if_then_else__46
            (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                  (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
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
                          (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824)
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))))
                    (coe
                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_814
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                    (coe v2) (coe v3)))
            (coe
               (\ v5 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_votes_814
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_action_820
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Ledger.Conway.Conformance.Gov.isRegistered
d_isRegistered_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_1934 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_isRegistered_2088 = erased
-- Ledger.Conway.Conformance.Gov.validHFAction
d_validHFAction_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 -> ()
d_validHFAction_2100 = erased
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__2118 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__2118
  = C_GOV'45'Vote_2536 MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_2640 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_1934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__2120 = erased
-- Ledger.Conway.Conformance.Gov.getAidPairsList
d_getAidPairsList_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_2122 ~v0 v1 = du_getAidPairsList_2122 v1
du_getAidPairsList_2122 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_2122 v0
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
                 MAlonzo.Code.Ledger.Enact.du_getHash_880
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))))
      (coe v0)
-- Ledger.Conway.Conformance.Gov._connects_to_
d__connects_to__2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__2134 = erased
-- Ledger.Conway.Conformance.Gov.enactable
d_enactable_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_2150 = erased
-- Ledger.Conway.Conformance.Gov.allEnactable
d_allEnactable_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_2168 = erased
-- Ledger.Conway.Conformance.Gov.hasParentE
d_hasParentE_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_hasParentE_2174 = erased
-- Ledger.Conway.Conformance.Gov.hasParent
d_hasParent_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> ()
d_hasParent_2188 = erased
-- Ledger.Conway.Conformance.Gov.hasParentE?
d_hasParentE'63'_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_2232 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Enact.du_getHashES_892 (coe v1) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> coe
                MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0)))
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
-- Ledger.Conway.Conformance.Gov.hasParent?
d_hasParent'63'_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_2266 v0 v1 v2 v3 v4
  = let v5
          = coe MAlonzo.Code.Ledger.Enact.du_getHash_880 (coe v3) (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__86
                (coe d_hasParentE'63'_2232 (coe v0) (coe v1) (coe v6) (coe v3))
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
                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0)))
                              (coe
                                 (\ v8 ->
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)) (coe v6))
                           (coe
                              du__'8776''63'__2016
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
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
-- Ledger.Conway.Conformance.Gov.hasParent'
d_hasParent''_2306 a0 a1 a2 a3 a4 = ()
newtype T_hasParent''_2306 = C_HasParent''_2316 AgdaAny
-- Ledger.Conway.Conformance.Gov.hasParent?'
d_hasParent'63'''_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_2326 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_HasParent''_2316)
         (coe
            (\ v5 ->
               case coe v5 of
                 C_HasParent''_2316 v10 -> coe v10
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe
            d_hasParent'63'_2266 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Conway.Conformance.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_2338 v0 v1 v2 v3
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
             (coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0)))
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
                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0)))
                          (coe
                             (\ v8 ->
                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                          (coe v6) (coe v2))
                       (coe
                          d_'91'_connects_to_'63''93'_2338 (coe v0) (coe v5) (coe v7)
                          (coe v3)))
                    (coe
                       d_'91'_connects_to_'63''93'_2338 (coe v0) (coe v5) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_2362 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
              (coe
                 MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.du_unique'63'_64
                 (coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                          (coe
                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                             (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))))
                 v4)
              (coe
                 d_'91'_connects_to_'63''93'_2338 (coe v0) (coe v4) (coe v1)
                 (coe v2))))
      (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3))
-- Ledger.Conway.Conformance.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_2380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_144
               (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3)))))
      (d_any'63''45'connecting'45'subperm_2362
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Conformance.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_2392 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Data.List.Ext.Properties2.du_'8707'uniqueSubset'8660''8707'uniqueSubperm_902
            (coe ()) (coe v3)))
      (d_'8707''63''45'connecting'45'subperm_2380
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Conway.Conformance.Gov.enactable?
d_enactable'63'_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_2402 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Ledger.Enact.du_getHashES_892 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v5)) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1070
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1470
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe v2)))
                       (d_'8707''63''45'connecting'45'subset_2392
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
-- Ledger.Conway.Conformance.Gov.allEnactable?
d_allEnactable'63'_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_2438 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_506
      (coe
         d_enactable'63'_2402 (coe v0) (coe v1)
         (coe du_getAidPairsList_2122 (coe v2)))
      (coe v2)
-- Ledger.Conway.Conformance.Gov.allEnactable'
d_allEnactable''_2446 a0 a1 a2 = ()
newtype T_allEnactable''_2446
  = C_AllEnactable''_2452 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Ledger.Conway.Conformance.Gov.allEnactable?'
d_allEnactable'63'''_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_2458 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
         (coe C_AllEnactable''_2452)
         (coe
            (\ v3 ->
               case coe v3 of
                 C_AllEnactable''_2452 v6 -> coe v6
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe d_allEnactable'63'_2438 (coe v0) (coe v1) (coe v2)))
-- Ledger.Conway.Conformance.Gov.maxAllEnactable
d_maxAllEnactable_2464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_2464 v0 v1
  = coe
      MAlonzo.Code.Data.List.Ext.Properties2.du_maxsublists'8871'P_756
      (coe d_allEnactable'63'_2438 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_2474 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_506
         (d_allEnactable'63'_2438 (coe v0) (coe v1)) v3
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_506
               (\ v5 ->
                  coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                    (coe MAlonzo.Code.Data.List.Base.du_length_284 v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties2.du_maxlen_16
                       (coe
                          MAlonzo.Code.Data.List.Ext.Properties2.du_sublists'8871'P_750
                          (coe d_allEnactable'63'_2438 (coe v0) (coe v1)) (coe v2))))
               v3
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_664
                  (coe d_allEnactable'63'_2438 (coe v0) (coe v1))
                  (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
               v4)))
-- Ledger.Conway.Conformance.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8712''45'maxAllEnactable'8594'maxLength_2494 v0 v1 v2 ~v3 ~v4 v5
                                                v6 ~v7
  = du_'8712''45'maxAllEnactable'8594'maxLength_2494 v0 v1 v2 v5 v6
du_'8712''45'maxAllEnactable'8594'maxLength_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8712''45'maxAllEnactable'8594'maxLength_2494 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Ext.Properties2.du_'8712''45'maxlen'45''8804'_42
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_664
         (coe d_allEnactable'63'_2438 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_500
         (d_allEnactable'63'_2438 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)) v3 v4)
-- Ledger.Conway.Conformance.Gov._.certState
d_certState_2522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45847 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2522 ~v0 v1 ~v2 ~v3 = du_certState_2522 v1
du_certState_2522 ::
  T_GeneralizeTel_45847 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_2522 v0
  = coe
      d_certState_1958 (coe d_'46'generalizedField'45'Γ_45835 (coe v0))
-- Ledger.Conway.Conformance.Gov._.enactState
d_enactState_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45847 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2524 ~v0 v1 ~v2 ~v3 = du_enactState_2524 v1
du_enactState_2524 ::
  T_GeneralizeTel_45847 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2524 v0
  = coe
      d_enactState_1956 (coe d_'46'generalizedField'45'Γ_45835 (coe v0))
-- Ledger.Conway.Conformance.Gov._.epoch
d_epoch_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45847 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_epoch_2526 ~v0 v1 ~v2 ~v3 = du_epoch_2526 v1
du_epoch_2526 :: T_GeneralizeTel_45847 -> AgdaAny
du_epoch_2526 v0
  = coe d_epoch_1950 (coe d_'46'generalizedField'45'Γ_45835 (coe v0))
-- Ledger.Conway.Conformance.Gov._.pparams
d_pparams_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45847 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2528 ~v0 v1 ~v2 ~v3 = du_pparams_2528 v1
du_pparams_2528 ::
  T_GeneralizeTel_45847 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2528 v0
  = coe
      d_pparams_1952 (coe d_'46'generalizedField'45'Γ_45835 (coe v0))
-- Ledger.Conway.Conformance.Gov._.ppolicy
d_ppolicy_2530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45847 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  Maybe AgdaAny
d_ppolicy_2530 ~v0 v1 ~v2 ~v3 = du_ppolicy_2530 v1
du_ppolicy_2530 :: T_GeneralizeTel_45847 -> Maybe AgdaAny
du_ppolicy_2530 v0
  = coe
      d_ppolicy_1954 (coe d_'46'generalizedField'45'Γ_45835 (coe v0))
-- Ledger.Conway.Conformance.Gov._.txid
d_txid_2532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_45847 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_txid_2532 ~v0 v1 ~v2 ~v3 = du_txid_2532 v1
du_txid_2532 :: T_GeneralizeTel_45847 -> AgdaAny
du_txid_2532 v0
  = coe d_txid_1948 (coe d_'46'generalizedField'45'Γ_45835 (coe v0))
-- Ledger.Conway.Conformance.Gov._.certState
d_certState_2542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2542 ~v0 v1 ~v2 = du_certState_2542 v1
du_certState_2542 ::
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_2542 v0
  = coe
      d_certState_1958 (coe d_'46'generalizedField'45'Γ_48633 (coe v0))
-- Ledger.Conway.Conformance.Gov._.enactState
d_enactState_2544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2544 ~v0 v1 ~v2 = du_enactState_2544 v1
du_enactState_2544 ::
  T_GeneralizeTel_48649 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_enactState_2544 v0
  = coe
      d_enactState_1956 (coe d_'46'generalizedField'45'Γ_48633 (coe v0))
-- Ledger.Conway.Conformance.Gov._.epoch
d_epoch_2546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 -> AgdaAny
d_epoch_2546 ~v0 v1 ~v2 = du_epoch_2546 v1
du_epoch_2546 :: T_GeneralizeTel_48649 -> AgdaAny
du_epoch_2546 v0
  = coe d_epoch_1950 (coe d_'46'generalizedField'45'Γ_48633 (coe v0))
-- Ledger.Conway.Conformance.Gov._.pparams
d_pparams_2548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2548 ~v0 v1 ~v2 = du_pparams_2548 v1
du_pparams_2548 ::
  T_GeneralizeTel_48649 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2548 v0
  = coe
      d_pparams_1952 (coe d_'46'generalizedField'45'Γ_48633 (coe v0))
-- Ledger.Conway.Conformance.Gov._.ppolicy
d_ppolicy_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 -> Maybe AgdaAny
d_ppolicy_2550 ~v0 v1 ~v2 = du_ppolicy_2550 v1
du_ppolicy_2550 :: T_GeneralizeTel_48649 -> Maybe AgdaAny
du_ppolicy_2550 v0
  = coe
      d_ppolicy_1954 (coe d_'46'generalizedField'45'Γ_48633 (coe v0))
-- Ledger.Conway.Conformance.Gov._.txid
d_txid_2552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 -> AgdaAny
d_txid_2552 ~v0 v1 ~v2 = du_txid_2552 v1
du_txid_2552 :: T_GeneralizeTel_48649 -> AgdaAny
du_txid_2552 v0
  = coe d_txid_1948 (coe d_'46'generalizedField'45'Γ_48633 (coe v0))
-- Ledger.Conway.Conformance.Gov._.govActionDeposit
d_govActionDeposit_2578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 -> Integer
d_govActionDeposit_2578 ~v0 v1 ~v2 = du_govActionDeposit_2578 v1
du_govActionDeposit_2578 :: T_GeneralizeTel_48649 -> Integer
du_govActionDeposit_2578 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372
      (coe
         d_pparams_1952 (coe d_'46'generalizedField'45'Γ_48633 (coe v0)))
-- Ledger.Conway.Conformance.Gov._.govActionLifetime
d_govActionLifetime_2580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 -> Integer
d_govActionLifetime_2580 ~v0 v1 ~v2 = du_govActionLifetime_2580 v1
du_govActionLifetime_2580 :: T_GeneralizeTel_48649 -> Integer
du_govActionLifetime_2580 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370
      (coe
         d_pparams_1952 (coe d_'46'generalizedField'45'Γ_48633 (coe v0)))
-- Ledger.Conway.Conformance.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_45835 ::
  T_GeneralizeTel_45847 -> T_GovEnv_1934
d_'46'generalizedField'45'Γ_45835 v0
  = case coe v0 of
      C_mkGeneralizeTel_45849 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_45837 ::
  T_GeneralizeTel_45847 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_45837 v0
  = case coe v0 of
      C_mkGeneralizeTel_45849 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-voter
d_'46'generalizedField'45'voter_45839 ::
  T_GeneralizeTel_45847 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voter_45839 v0
  = case coe v0 of
      C_mkGeneralizeTel_45849 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-v
d_'46'generalizedField'45'v_45841 ::
  T_GeneralizeTel_45847 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_'46'generalizedField'45'v_45841 v0
  = case coe v0 of
      C_mkGeneralizeTel_45849 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-s
d_'46'generalizedField'45's_45843 ::
  T_GeneralizeTel_45847 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_45843 v0
  = case coe v0 of
      C_mkGeneralizeTel_45849 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-k
d_'46'generalizedField'45'k_45845 ::
  T_GeneralizeTel_45847 -> Integer
d_'46'generalizedField'45'k_45845 v0
  = case coe v0 of
      C_mkGeneralizeTel_45849 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GeneralizeTel
d_GeneralizeTel_45847 a0 = ()
data T_GeneralizeTel_45847
  = C_mkGeneralizeTel_45849 T_GovEnv_1934
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Conway.Conformance.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_48633 ::
  T_GeneralizeTel_48649 -> T_GovEnv_1934
d_'46'generalizedField'45'Γ_48633 v0
  = case coe v0 of
      C_mkGeneralizeTel_48651 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_48635 ::
  T_GeneralizeTel_48649 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_'46'generalizedField'45'addr_48635 v0
  = case coe v0 of
      C_mkGeneralizeTel_48651 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-a
d_'46'generalizedField'45'a_48637 ::
  T_GeneralizeTel_48649 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_'46'generalizedField'45'a_48637 v0
  = case coe v0 of
      C_mkGeneralizeTel_48651 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-p
d_'46'generalizedField'45'p_48639 ::
  T_GeneralizeTel_48649 -> Maybe AgdaAny
d_'46'generalizedField'45'p_48639 v0
  = case coe v0 of
      C_mkGeneralizeTel_48651 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-d
d_'46'generalizedField'45'd_48641 ::
  T_GeneralizeTel_48649 -> Integer
d_'46'generalizedField'45'd_48641 v0
  = case coe v0 of
      C_mkGeneralizeTel_48651 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_48643 ::
  T_GeneralizeTel_48649 -> AgdaAny
d_'46'generalizedField'45'prev_48643 v0
  = case coe v0 of
      C_mkGeneralizeTel_48651 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-s
d_'46'generalizedField'45's_48645 ::
  T_GeneralizeTel_48649 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_48645 v0
  = case coe v0 of
      C_mkGeneralizeTel_48651 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov..generalizedField-k
d_'46'generalizedField'45'k_48647 ::
  T_GeneralizeTel_48649 -> Integer
d_'46'generalizedField'45'k_48647 v0
  = case coe v0 of
      C_mkGeneralizeTel_48651 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Gov.GeneralizeTel
d_GeneralizeTel_48649 a0 = ()
data T_GeneralizeTel_48649
  = C_mkGeneralizeTel_48651 T_GovEnv_1934
                            MAlonzo.Code.Ledger.Address.T_RwdAddr_76
                            MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
                            (Maybe AgdaAny) Integer AgdaAny
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
