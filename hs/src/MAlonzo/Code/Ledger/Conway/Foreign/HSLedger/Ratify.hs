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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data StakeDistrs = StakeDistrs {stakeDistr :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.VDeleg Integer)}
  deriving (Show, Eq, Generic)
data RatifyEnv = MkRatifyEnv {reStakeDistrs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs, reCurrentEpoch :: Integer, reDreps :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential Integer), reCcHotKeys :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential)), reTreasury :: Integer, rePools :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.PoolParams), reDelegatees :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.VDeleg)}
  deriving (Show, Eq, Generic)
data RatifyState = MkRatifyState {rsEnactState :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.EnactState, rsRemoved :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSSet ((Integer, Integer), MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.GovActionState)), rsDelay :: Bool}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv
d_EnactEnv_28 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState
d_EnactState_30 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactStateOf
d_EnactStateOf_32 ::
  MAlonzo.Code.Ledger.Enact.T_HasEnactState_928 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_902
d_EnactStateOf_32 v0
  = coe MAlonzo.Code.Ledger.Enact.d_EnactStateOf_936 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_34 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'EnactEnv_34
  = coe MAlonzo.Code.Ledger.Enact.du_HasCast'45'EnactEnv_946
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState
d_HasEnactState_36 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasPParams-EnactState
d_HasPParams'45'EnactState_38 ::
  MAlonzo.Code.Ledger.PParams.T_HasPParams_408
d_HasPParams'45'EnactState_38
  = coe MAlonzo.Code.Ledger.Enact.du_HasPParams'45'EnactState_942
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_40 ::
  MAlonzo.Code.Ledger.PParams.T_HasccMaxTermLength_426
d_HasccMaxTermLength'45'EnactState_40
  = coe
      MAlonzo.Code.Ledger.Enact.du_HasccMaxTermLength'45'EnactState_944
-- Ledger.Conway.Foreign.HSLedger.Ratify._.ccCreds
d_ccCreds_42 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_42 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_948
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHash
d_getHash_44 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_744 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_44 = coe MAlonzo.Code.Ledger.Enact.du_getHash_954
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHashES
d_getHashES_46 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_744 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_46 = coe MAlonzo.Code.Ledger.Enact.du_getHashES_966
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.epoch
d_epoch_66 :: MAlonzo.Code.Ledger.Enact.T_EnactEnv_888 -> Integer
d_epoch_66 v0 = coe MAlonzo.Code.Ledger.Enact.d_epoch_900 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.gid
d_gid_68 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_68 v0 = coe MAlonzo.Code.Ledger.Enact.d_gid_896 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.treasury
d_treasury_70 ::
  MAlonzo.Code.Ledger.Enact.T_EnactEnv_888 -> Integer
d_treasury_70 v0
  = coe MAlonzo.Code.Ledger.Enact.d_treasury_898 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.cc
d_cc_74 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_74 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_914 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.constitution
d_constitution_76 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_76 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_916 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pparams
d_pparams_78 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_78 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_920 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pv
d_pv_80 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_80 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_918 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.withdrawals
d_withdrawals_82 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_82 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_922 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_86 ::
  MAlonzo.Code.Ledger.Enact.T_HasEnactState_928 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_902
d_EnactStateOf_86 v0
  = coe MAlonzo.Code.Ledger.Enact.d_EnactStateOf_936 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._._∧_
d__'8743'__90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__90 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__92 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__92 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__94 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.CCData
d_CCData_96 :: ()
d_CCData_96 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-RatifyState
d_HasCast'45'RatifyState_98 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'RatifyState_98
  = coe MAlonzo.Code.Ledger.Ratify.du_HasCast'45'RatifyState_2278
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_100 ::
  MAlonzo.Code.Ledger.Enact.T_HasEnactState_928
d_HasEnactState'45'RatifyState_100
  = coe
      MAlonzo.Code.Ledger.Ratify.du_HasEnactState'45'RatifyState_2258
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState
d_HasRatifyState_102 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Is-nothing?
d_Is'45'nothing'63'_104 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_104 v0 v1
  = coe MAlonzo.Code.Ledger.Ratify.du_Is'45'nothing'63'_2752 v1
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsCC
d_IsCC_106 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_726 -> ()
d_IsCC_106 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsDRep
d_IsDRep_108 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_726 -> ()
d_IsDRep_108 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsSPO
d_IsSPO_110 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_726 -> ()
d_IsSPO_110 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_118 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_120 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyStateOf
d_RatifyStateOf_122 ::
  MAlonzo.Code.Ledger.Ratify.T_HasRatifyState_2244 ->
  AgdaAny -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226
d_RatifyStateOf_122 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_RatifyStateOf_2252 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_124 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptConds
d_acceptConds_126 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_126 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted
d_accepted_128 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 -> ()
d_accepted_128 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted?
d_accepted'63'_130 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_130
  = coe
      MAlonzo.Code.Ledger.Ratify.d_accepted'63'_2780
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedBy
d_acceptedBy_132 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_714 -> ()
d_acceptedBy_132 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedBy?
d_acceptedBy'63'_134 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_714 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_134
  = coe
      MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2768
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedStakeRatio
d_acceptedStakeRatio_136 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_714 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_726] ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_136
  = coe
      MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2458
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.actualVotes
d_actualVotes_138 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_744 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_138
  = coe
      MAlonzo.Code.Ledger.Ratify.d_actualVotes_2280
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.canVote
d_canVote_140 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_762 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_714 -> ()
d_canVote_140 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.defer
d_defer_142 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_142 = coe MAlonzo.Code.Ledger.Ratify.du_defer_2026
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed
d_delayed_144 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_744 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_902 -> Bool -> ()
d_delayed_144 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed?
d_delayed'63'_146 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_744 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_146
  = coe
      MAlonzo.Code.Ledger.Ratify.d_delayed'63'_2736
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayingAction
d_delayingAction_148 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_744 -> Bool
d_delayingAction_148
  = coe MAlonzo.Code.Ledger.Ratify.du_delayingAction_2626
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired
d_expired_150 ::
  Integer ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 -> ()
d_expired_150 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired?
d_expired'63'_152 ::
  Integer ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_838 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_152
  = coe
      MAlonzo.Code.Ledger.Ratify.d_expired'63'_2796
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getStakeDist
d_getStakeDist_154 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_714 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_726] ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_154
  = coe MAlonzo.Code.Ledger.Ratify.du_getStakeDist_2448
-- Ledger.Conway.Foreign.HSLedger.Ratify._.govRole
d_govRole_156 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_726 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_714
d_govRole_156 = coe MAlonzo.Code.Ledger.Ratify.d_govRole_2262
-- Ledger.Conway.Foreign.HSLedger.Ratify._.maxThreshold
d_maxThreshold_158 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_158
  = coe MAlonzo.Code.Ledger.Ratify.du_maxThreshold_2028
-- Ledger.Conway.Foreign.HSLedger.Ratify._.threshold
d_threshold_160 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_762 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_714 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_160
  = coe
      MAlonzo.Code.Ledger.Ratify.d_threshold_2050
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev
d_verifyPrev_162 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_744 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_902 -> ()
d_verifyPrev_162 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev?
d_verifyPrev'63'_164 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionType_744 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_164
  = coe
      MAlonzo.Code.Ledger.Ratify.d_verifyPrev'63'_2698
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.vote
d_vote_166 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_166 = coe MAlonzo.Code.Ledger.Ratify.du_vote_2024
-- Ledger.Conway.Foreign.HSLedger.Ratify._.─
d_'9472'_168 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_168 = coe MAlonzo.Code.Ledger.Ratify.du_'9472'_2046
-- Ledger.Conway.Foreign.HSLedger.Ratify._.✓†
d_'10003''8224'_170 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_170
  = coe MAlonzo.Code.Ledger.Ratify.du_'10003''8224'_2048
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_182 ::
  MAlonzo.Code.Ledger.Ratify.T_HasRatifyState_2244 ->
  AgdaAny -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226
d_RatifyStateOf_182 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_RatifyStateOf_2252 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_186 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_186 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_ccHotKeys_2218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_188 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 -> Integer
d_currentEpoch_188 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_2214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.delegatees
d_delegatees_190 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_190 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delegatees_2224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_192 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_192 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_dreps_2216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.pools
d_pools_194 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_194 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_pools_2222 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_196 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2190
d_stakeDistrs_196 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_2212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_198 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 -> Integer
d_treasury_198 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_treasury_2220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_202 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 -> Bool
d_delay_202 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_2238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_204 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902
d_es_204 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_2234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_206 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_206 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_2236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistr
d_stakeDistr_210 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_2190 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_210 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2194 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFIES
d_Computational'45'RATIFIES_214 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_214
  = coe
      MAlonzo.Code.Ledger.Ratify.Properties.d_Computational'45'RATIFIES_2100
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFY
d_Computational'45'RATIFY_216 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_216
  = coe
      MAlonzo.Code.Ledger.Ratify.Properties.d_Computational'45'RATIFY_2098
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete
d_RATIFIES'45'complete_218 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_218 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete'
d_RATIFIES'45'complete''_220 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_220 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total
d_RATIFIES'45'total_222 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_222
  = coe
      MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFIES'45'total_2110
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total'
d_RATIFIES'45'total''_224 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2196 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2226 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_224
  = coe
      MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFIES'45'total''_2130
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_226 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_226 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_228 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_228
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401 v1
                -> coe
                     C_StakeDistrs_243
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_StakeDistrs_243 v1
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v2
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (let v3
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v2) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_866
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                       (coe v3)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v1)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_230 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_230 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_232 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_232
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkRatifyEnv_713
                     (coe
                        C_StakeDistrs_243
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2194 (coe v1))))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_713 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401 v9
                                     -> coe
                                          C_StakeDistrs_243
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   C_StakeDistrs_243 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_866
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                                            (coe v11)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v8
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v8
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v4)))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v6)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v8
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v7)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_234 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_234 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_236 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_236
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_RatifyState'46'constructor_13771 v1 v2 v3
                -> coe
                     C_MkRatifyState_9569
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_141
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                        (coe v4) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                            (coe v5))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                         (coe v5))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_cc_914 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_constitution_916 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pv_918 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pparams_920 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_922 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_9569 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_RatifyState'46'constructor_13771
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2765 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_141
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                            (let v10
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                             coe
                                                               (let v11
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                          (coe v10) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                              (coe v11))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                           (coe v11))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_141 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2765
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                         (let v10
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                          coe
                                                            (let v11
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                       (coe v10) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                        (coe v11))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v5))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v6))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v7))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v8))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_238
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1246
                                                               (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776)))
                           (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.ratify-debug
ratifyDebug ::
  T_RatifyEnv_711 ->
  T_RatifyState_9567 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11213) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
ratifyDebug = coe d_ratify'45'debug_238
d_ratify'45'debug_238 ::
  T_RatifyEnv_711 ->
  T_RatifyState_9567 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11213] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_ratify'45'debug_238 v0 v1 v2
  = coe
      MAlonzo.Code.Data.String.Base.d__'43''43'__20
      ("Number of govactions: " :: Data.Text.Text)
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20
         (coe
            MAlonzo.Code.Data.Nat.Show.d_show_56
            (coe MAlonzo.Code.Data.List.Base.du_length_284 v2))
         (coe
            MAlonzo.Code.Data.String.Base.d__'43''43'__20
            ("\n" :: Data.Text.Text)
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_216
               (coe
                  (\ v3 v4 ->
                     coe
                       MAlonzo.Code.Data.String.Base.d__'43''43'__20 v4
                       (coe du_govActionInfo_266 (coe v0) (coe v1) (coe v3))))
               (coe ("" :: Data.Text.Text)) (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs
d_StakeDistrs_241 = ()
type T_StakeDistrs_241 = StakeDistrs
pattern C_StakeDistrs_243 a0 = StakeDistrs a0
check_StakeDistrs_243 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_VDeleg_689
    Integer ->
  T_StakeDistrs_241
check_StakeDistrs_243 = StakeDistrs
cover_StakeDistrs_241 :: StakeDistrs -> ()
cover_StakeDistrs_241 x
  = case x of
      StakeDistrs _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.govActionInfo
d_govActionInfo_266 ::
  T_RatifyEnv_711 ->
  T_RatifyState_9567 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11213] ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11213 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_govActionInfo_266 v0 v1 ~v2 v3 = du_govActionInfo_266 v0 v1 v3
du_govActionInfo_266 ::
  T_RatifyEnv_711 ->
  T_RatifyState_9567 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11213 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_govActionInfo_266 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("SPO: \t" :: Data.Text.Text)
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (MAlonzo.Code.Data.Rational.Show.d_show_6
                   (coe
                      MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2458
                      (coe
                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                         (coe
                            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_720)
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_548
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1470
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                         (coe
                            MAlonzo.Code.Ledger.Ratify.d_actualVotes_2280
                            (coe
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521 v6 v7 v8 v9 v10 v11 v12
                                            -> coe
                                                 C_MkRatifyEnv_713
                                                 (coe
                                                    C_StakeDistrs_243
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2194
                                                                (coe v6))))))
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v8))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9))))
                                                 (coe v10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v11))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v12))))
                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          C_MkRatifyEnv_713 v6 v7 v8 v9 v10 v11 v12
                                            -> coe
                                                 MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                       (coe
                                                          (\ v13 ->
                                                             case coe v13 of
                                                               MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401 v14
                                                                 -> coe
                                                                      C_StakeDistrs_243
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v14))))
                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                       (coe
                                                          (\ v13 ->
                                                             case coe v13 of
                                                               C_StakeDistrs_243 v14
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                            (let v15
                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                             coe
                                                                               (let v16
                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                          (coe
                                                                                             v15) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_866
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                                                                        (coe
                                                                                           v16)))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                         (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                            (coe v14)))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                    v6)
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v13
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                        coe
                                                          (let v14
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                      (coe v14))))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                    (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v13
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                        coe
                                                          (let v14
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                      (coe v14))))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                    (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                       (coe v9)))
                                                 (coe v10)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (coe
                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62))
                                                    (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                       (coe v11)))
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v13
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                        coe
                                                          (let v14
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                      (coe v14))))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                    (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                       (coe v12)))
                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                               v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Enact.d_pparams_920
                                  (coe
                                     MAlonzo.Code.Ledger.Ratify.d_es_2234
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_236 v1))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Enact.d_cc_914
                                  (coe
                                     MAlonzo.Code.Ledger.Ratify.d_es_2234
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_236 v1))))
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_gaType_768
                               (coe
                                  MAlonzo.Code.Ledger.GovernanceActions.d_action_856
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                     v4)))
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_votes_850
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                  v4))))
                      (coe
                         MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_2212
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_232
                            v0))
                      (coe
                         MAlonzo.Code.Ledger.Ratify.d_actualVotes_2280
                         (coe
                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                            (coe
                               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20
                            (coe
                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521 v6 v7 v8 v9 v10 v11 v12
                                         -> coe
                                              C_MkRatifyEnv_713
                                              (coe
                                                 C_StakeDistrs_243
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2194
                                                             (coe v6))))))
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v9))))
                                              (coe v10)
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v11))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v12))))
                                       _ -> MAlonzo.RTE.mazUnreachableError))
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       C_MkRatifyEnv_713 v6 v7 v8 v9 v10 v11 v12
                                         -> coe
                                              MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                    (coe
                                                       (\ v13 ->
                                                          case coe v13 of
                                                            MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401 v14
                                                              -> coe
                                                                   C_StakeDistrs_243
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v14))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                    (coe
                                                       (\ v13 ->
                                                          case coe v13 of
                                                            C_StakeDistrs_243 v14
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                         (let v15
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                          coe
                                                                            (let v16
                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                       (coe v15) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_866
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                                                                     (coe v16)))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                      (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                         (coe v14)))
                                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                                 v6)
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v13
                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                     coe
                                                       (let v14
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                   (coe v14))))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                 (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                    (coe v8)))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v13
                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                     coe
                                                       (let v14
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                   (coe v14))))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                 (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                    (coe v9)))
                                              (coe v10)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (coe
                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62))
                                                 (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                    (coe v11)))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v13
                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                     coe
                                                       (let v14
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                   (coe v14))))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                 (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                    (coe v12)))
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                            v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Enact.d_pparams_920
                               (coe
                                  MAlonzo.Code.Ledger.Ratify.d_es_2234
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_236 v1))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Enact.d_cc_914
                               (coe
                                  MAlonzo.Code.Ledger.Ratify.d_es_2234
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_236 v1))))
                         (coe
                            MAlonzo.Code.Ledger.GovernanceActions.d_gaType_768
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_action_856
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                  v4)))
                         (coe
                            MAlonzo.Code.Ledger.GovernanceActions.d_votes_850
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                               v4)))))
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   ("\t" :: Data.Text.Text)
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (let v5
                             = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2768
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    d_Conv'45'RatifyEnv_232 v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_2234
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'RatifyState_236 v1))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                    v4)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_720) in
                       coe
                         (case coe v5 of
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                              -> if coe v6
                                   then coe seq (coe v7) (coe ("\10003" :: Data.Text.Text))
                                   else coe seq (coe v7) (coe ("\215" :: Data.Text.Text))
                            _ -> MAlonzo.RTE.mazUnreachableError))
                      (coe
                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                         ("\n" :: Data.Text.Text)
                         (coe
                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                            ("DRep: \t" :: Data.Text.Text)
                            (coe
                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                               (MAlonzo.Code.Data.Rational.Show.d_show_6
                                  (coe
                                     MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2458
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                     (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_718)
                                     (coe
                                        MAlonzo.Code.Class.IsSet.du_dom_548
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                        (coe
                                           MAlonzo.Code.Ledger.Ratify.d_actualVotes_2280
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521 v6 v7 v8 v9 v10 v11 v12
                                                           -> coe
                                                                C_MkRatifyEnv_713
                                                                (coe
                                                                   C_StakeDistrs_243
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2194
                                                                               (coe v6))))))
                                                                (coe v7)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v8))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v9))))
                                                                (coe v10)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v11))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v12))))
                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         C_MkRatifyEnv_713 v6 v7 v8 v9 v10 v11 v12
                                                           -> coe
                                                                MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                      (coe
                                                                         (\ v13 ->
                                                                            case coe v13 of
                                                                              MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401 v14
                                                                                -> coe
                                                                                     C_StakeDistrs_243
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 v14))))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                      (coe
                                                                         (\ v13 ->
                                                                            case coe v13 of
                                                                              C_StakeDistrs_243 v14
                                                                                -> coe
                                                                                     MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                           (let v15
                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                            coe
                                                                                              (let v16
                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                         (coe
                                                                                                            v15) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_866
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                                                                                       (coe
                                                                                                          v16)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                           (coe
                                                                                              v14)))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                   v6)
                                                                (coe v7)
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                      (let v13
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                       coe
                                                                         (let v14
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                     (coe v14))))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                      (coe v8)))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                      (let v13
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                       coe
                                                                         (let v14
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                     (coe v14))))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                      (coe v9)))
                                                                (coe v10)
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                      (coe
                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62))
                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                      (coe v11)))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                      (let v13
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                       coe
                                                                         (let v14
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                     (coe v14))))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                   (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                      (coe v12)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                              v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Enact.d_pparams_920
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_236 v1))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Enact.d_cc_914
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_236 v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_gaType_768
                                              (coe
                                                 MAlonzo.Code.Ledger.GovernanceActions.d_action_856
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                    v4)))
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_votes_850
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                 v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_2212
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           d_Conv'45'RatifyEnv_232 v0))
                                     (coe
                                        MAlonzo.Code.Ledger.Ratify.d_actualVotes_2280
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521 v6 v7 v8 v9 v10 v11 v12
                                                        -> coe
                                                             C_MkRatifyEnv_713
                                                             (coe
                                                                C_StakeDistrs_243
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2194
                                                                            (coe v6))))))
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v9))))
                                                             (coe v10)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))))
                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      C_MkRatifyEnv_713 v6 v7 v8 v9 v10 v11 v12
                                                        -> coe
                                                             MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                   (coe
                                                                      (\ v13 ->
                                                                         case coe v13 of
                                                                           MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401 v14
                                                                             -> coe
                                                                                  C_StakeDistrs_243
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v14))))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   (coe
                                                                      (\ v13 ->
                                                                         case coe v13 of
                                                                           C_StakeDistrs_243 v14
                                                                             -> coe
                                                                                  MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                        (let v15
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                         coe
                                                                                           (let v16
                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                      (coe
                                                                                                         v15) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_866
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                                                                                    (coe
                                                                                                       v16)))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                     (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                        (coe v14)))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                v6)
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v13
                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                    coe
                                                                      (let v14
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                  (coe v14))))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v13
                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                    coe
                                                                      (let v14
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                  (coe v14))))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                   (coe v9)))
                                                             (coe v10)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62))
                                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                   (coe v11)))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v13
                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                    coe
                                                                      (let v14
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                  (coe v14))))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                   (coe v12)))
                                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                                           v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Enact.d_pparams_920
                                              (coe
                                                 MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_236 v1))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Enact.d_cc_914
                                              (coe
                                                 MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_236 v1))))
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_gaType_768
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_action_856
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                 v4)))
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_votes_850
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                              v4)))))
                               (coe
                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                  ("\t" :: Data.Text.Text)
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                     (let v5
                                            = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2768
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'RatifyEnv_232 v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Conv'45'RatifyState_236 v1))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.GovernanceActions.C_DRep_718) in
                                      coe
                                        (case coe v5 of
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                             -> if coe v6
                                                  then coe
                                                         seq (coe v7)
                                                         (coe ("\10003" :: Data.Text.Text))
                                                  else coe
                                                         seq (coe v7)
                                                         (coe ("\215" :: Data.Text.Text))
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                     (coe
                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                        ("\n" :: Data.Text.Text)
                                        (coe
                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                           ("CC: \t" :: Data.Text.Text)
                                           (coe
                                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                              (MAlonzo.Code.Data.Rational.Show.d_show_6
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2458
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovernanceActions.C_CC_716)
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_dom_548
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ratify.d_actualVotes_2280
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521 v6 v7 v8 v9 v10 v11 v12
                                                                          -> coe
                                                                               C_MkRatifyEnv_713
                                                                               (coe
                                                                                  C_StakeDistrs_243
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2194
                                                                                              (coe
                                                                                                 v6))))))
                                                                               (coe v7)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v8))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v9))))
                                                                               (coe v10)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v11))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v12))))
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        C_MkRatifyEnv_713 v6 v7 v8 v9 v10 v11 v12
                                                                          -> coe
                                                                               MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                     (coe
                                                                                        (\ v13 ->
                                                                                           case coe
                                                                                                  v13 of
                                                                                             MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401 v14
                                                                                               -> coe
                                                                                                    C_StakeDistrs_243
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                             (coe
                                                                                                                v14))))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                     (coe
                                                                                        (\ v13 ->
                                                                                           case coe
                                                                                                  v13 of
                                                                                             C_StakeDistrs_243 v14
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                          (let v15
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                                           coe
                                                                                                             (let v16
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                                        (coe
                                                                                                                           v15) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_866
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                                                                                                      (coe
                                                                                                                         v16)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                          (coe
                                                                                                             v14)))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                  v6)
                                                                               (coe v7)
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                     (let v13
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                      coe
                                                                                        (let v14
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                    (coe
                                                                                                       v14))))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                     (coe v8)))
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                     (let v13
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                      coe
                                                                                        (let v14
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                    (coe
                                                                                                       v14))))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                     (coe v9)))
                                                                               (coe v10)
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62))
                                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                     (coe v11)))
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                     (let v13
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                      coe
                                                                                        (let v14
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                    (coe
                                                                                                       v14))))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                     (coe v12)))
                                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                                             v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_pparams_920
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_236
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_cc_914
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_236
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_gaType_768
                                                             (coe
                                                                MAlonzo.Code.Ledger.GovernanceActions.d_action_856
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                                   v4)))
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_votes_850
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                                v4))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_2212
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          d_Conv'45'RatifyEnv_232 v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Ratify.d_actualVotes_2280
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521 v6 v7 v8 v9 v10 v11 v12
                                                                       -> coe
                                                                            C_MkRatifyEnv_713
                                                                            (coe
                                                                               C_StakeDistrs_243
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Ratify.d_stakeDistr_2194
                                                                                           (coe
                                                                                              v6))))))
                                                                            (coe v7)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v8))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v9))))
                                                                            (coe v10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62)))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v11))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v12))))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     C_MkRatifyEnv_713 v6 v7 v8 v9 v10 v11 v12
                                                                       -> coe
                                                                            MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_13521
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                  (coe
                                                                                     (\ v13 ->
                                                                                        case coe
                                                                                               v13 of
                                                                                          MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401 v14
                                                                                            -> coe
                                                                                                 C_StakeDistrs_243
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             v14))))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                  (coe
                                                                                     (\ v13 ->
                                                                                        case coe
                                                                                               v13 of
                                                                                          C_StakeDistrs_243 v14
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_13401
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                       (let v15
                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                                        coe
                                                                                                          (let v16
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                                     (coe
                                                                                                                        v15) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_866
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2422
                                                                                                                   (coe
                                                                                                                      v16)))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                                       (coe
                                                                                                          v14)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                               v6)
                                                                            (coe v7)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                  (let v13
                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                   coe
                                                                                     (let v14
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                 (coe
                                                                                                    v14))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                               (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                  (coe v8)))
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                  (let v13
                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                   coe
                                                                                     (let v14
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                 (coe
                                                                                                    v14))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                               (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                  (coe v9)))
                                                                            (coe v10)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_62))
                                                                               (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                  (coe v11)))
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                  (let v13
                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                   coe
                                                                                     (let v14
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_186
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1270
                                                                                                 (coe
                                                                                                    v14))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                               (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                  (coe v12)))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)))
                                                          v0)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.d_pparams_920
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_236 v1))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.d_cc_914
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_236 v1))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_gaType_768
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_action_856
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                                v4)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_votes_850
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                             v4)))))
                                              (coe
                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                 ("\t" :: Data.Text.Text)
                                                 (coe
                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                    (let v5
                                                           = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2768
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'RatifyEnv_232 v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Ratify.d_es_2234
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     d_Conv'45'RatifyState_236 v1))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_716) in
                                                     coe
                                                       (case coe v5 of
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                                            -> if coe v6
                                                                 then coe
                                                                        seq (coe v7)
                                                                        (coe
                                                                           ("\10003"
                                                                            ::
                                                                            Data.Text.Text))
                                                                 else coe
                                                                        seq (coe v7)
                                                                        (coe
                                                                           ("\215"
                                                                            ::
                                                                            Data.Text.Text))
                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                    ("\n" :: Data.Text.Text))))))))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_711 ->
  T_RatifyState_9567 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11213) ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Empty_8
    T_RatifyState_9567
ratifyStep = coe d_ratify'45'step_320
d_ratify'45'step_320 ::
  T_RatifyEnv_711 ->
  T_RatifyState_9567 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11213] ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Empty_8
    T_RatifyState_9567
d_ratify'45'step_320 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'RatifyState_236)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_776)))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_20)
               (coe d_Conv'45'RatifyState_236))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Ratify.Properties.d_Computational'45'RATIFIES_2100
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_682
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_232
            v0))
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyEnv
d_RatifyEnv_711 = ()
type T_RatifyEnv_711 = RatifyEnv
pattern C_MkRatifyEnv_713 a0 a1 a2 a3 a4 a5 a6 = MkRatifyEnv a0 a1 a2 a3 a4 a5 a6
check_MkRatifyEnv_713 ::
  T_StakeDistrs_241 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533
    Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533) ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    Integer
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_PoolParams_83 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_VDeleg_689 ->
  T_RatifyEnv_711
check_MkRatifyEnv_713 = MkRatifyEnv
cover_RatifyEnv_711 :: RatifyEnv -> ()
cover_RatifyEnv_711 x
  = case x of
      MkRatifyEnv _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyState
d_RatifyState_9567 = ()
type T_RatifyState_9567 = RatifyState
pattern C_MkRatifyState_9569 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_9569 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_139 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSSet_32
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11213) ->
  Bool -> T_RatifyState_9567
check_MkRatifyState_9569 = MkRatifyState
cover_RatifyState_9567 :: RatifyState -> ()
cover_RatifyState_9567 x
  = case x of
      MkRatifyState _ _ _ -> ()
