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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty

import GHC.Generics (Generic)
data StakeDistrs = StakeDistrs {stakeDistrVDeleg :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.VDeleg Integer), stakeDistrPools :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer Integer)}
  deriving (Show, Eq, Generic)
data RatifyEnv = MkRatifyEnv {reStakeDistrs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs, reCurrentEpoch :: Integer, reDreps :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential Integer), reCcHotKeys :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential)), reTreasury :: Integer, rePools :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.StakePoolParams), reDelegatees :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.VDeleg)}
  deriving (Show, Eq, Generic)
data RatifyState = MkRatifyState {rsEnactState :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.EnactState, rsRemoved :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet ((Integer, Integer), MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.GovActionState)), rsDelay :: Bool}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv
d_EnactEnv_28 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState
d_EnactState_32 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactStateOf
d_EnactStateOf_36 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1074 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046
d_EnactStateOf_36 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_38 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_38
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1096
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState
d_HasEnactState_40 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasPParams-EnactState
d_HasPParams'45'EnactState_44 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'EnactState_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1090
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasWithdrawals-EnactState
d_HasWithdrawals'45'EnactState_46 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'EnactState_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasWithdrawals'45'EnactState_1094
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_438
d_HasccMaxTermLength'45'EnactState_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1092
-- Ledger.Conway.Foreign.HSLedger.Ratify._.ccCreds
d_ccCreds_50 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1098
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHash
d_getHash_52 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1104
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHashES
d_getHashES_54 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_54
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1116
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.epoch
d_epoch_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1030 ->
  Integer
d_epoch_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.gid
d_gid_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1038 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.treasury
d_treasury_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1030 ->
  Integer
d_treasury_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_1040
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.cc
d_cc_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1058 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.constitution
d_constitution_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1060
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pparams
d_pparams_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1064
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pv
d_pv_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1062 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.withdrawals
d_withdrawals_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1066
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1074 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046
d_EnactStateOf_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._._∧_
d__'8743'__98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__98 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__100 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__102 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-RatifyState
d_HasCast'45'RatifyState_104 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2566
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1074
d_HasEnactState'45'RatifyState_106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_2562
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState
d_HasRatifyState_108 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_112 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_112
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasTreasury'45'RatifyEnv_2564
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Is-nothing?
d_Is'45'nothing'63'_114 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_114 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_3132
      v1
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_122 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_126 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyStateOf
d_RatifyStateOf_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2546 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526
d_RatifyStateOf_130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2554
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_132 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptConds
d_acceptConds_136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_136 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted
d_accepted_138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  ()
d_accepted_138 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted?
d_accepted'63'_140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_3146
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedByCC
d_acceptedByCC_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  ()
d_acceptedByCC_142 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedByDRep
d_acceptedByDRep_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  ()
d_acceptedByDRep_144 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedBySPO
d_acceptedBySPO_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  ()
d_acceptedBySPO_146 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.canVote
d_canVote_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  ()
d_canVote_148 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.defer
d_defer_150 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_150
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defer_2316
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed
d_delayed_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  Bool -> ()
d_delayed_152 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed?
d_delayed'63'_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_154
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_3116
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayingAction
d_delayingAction_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  Bool
d_delayingAction_156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_3006
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired
d_expired_158 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  ()
d_expired_158 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired?
d_expired'63'_160 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_160
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_3186
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.maxThreshold
d_maxThreshold_162 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_maxThreshold_2318
-- Ledger.Conway.Foreign.HSLedger.Ratify._.threshold
d_threshold_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_2340
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev
d_verifyPrev_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  ()
d_verifyPrev_166 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev?
d_verifyPrev'63'_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_3078
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.vote
d_vote_170 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_170
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_vote_2314
-- Ledger.Conway.Foreign.HSLedger.Ratify._.─
d_'9472'_172 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_'9472'_2336
-- Ledger.Conway.Foreign.HSLedger.Ratify._.✓†
d_'10003''8224'_174 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_'10003''8224'_2338
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2546 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526
d_RatifyStateOf_186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2554
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_2516
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  Integer
d_currentEpoch_192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_2512
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.delegatees
d_delegatees_194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_2522
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_2514
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.pools
d_pools_198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_2520
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2482
d_stakeDistrs_200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2510
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  Integer
d_treasury_202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_2518
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  Bool
d_delay_206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2538
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1046
d_es_208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2534 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2536
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2482 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_2490
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2482 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_2488
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFIES
d_Computational'45'RATIFIES_220 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_220
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFIES_2306
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFY
d_Computational'45'RATIFY_222 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_222
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFY_2304
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete
d_RATIFIES'45'complete_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_224 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete'
d_RATIFIES'45'complete''_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_226 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-deterministic
d_RATIFIES'45'deterministic_228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_228 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_230 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total
d_RATIFIES'45'total_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_RATIFIES'45'total_2316
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total'
d_RATIFIES'45'total''_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2494 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_234
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_RATIFIES'45'total''_2336
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_236 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_236 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_238 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_238
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2492 v1 v2
                -> coe
                     C_StakeDistrs_245
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_102)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_StakeDistrs_245 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2492
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v3
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v4
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                         (coe v3) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1032
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                       (coe v4)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_102)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v2)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_240 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_240 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_242 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_242
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2524 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkRatifyEnv_1735
                     (coe
                        C_StakeDistrs_245
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_102)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_2488
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_2490
                                    (coe v1))))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_102)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_1735 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2524
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2492 v9 v10
                                     -> coe
                                          C_StakeDistrs_245
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_102)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   C_StakeDistrs_245 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2492
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v12
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v11) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1032
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                            (coe v12)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_102)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v9)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v10)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v8
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v8
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v4)))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v6)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v8
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_102))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v7)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs
d_StakeDistrs_243 = ()
type T_StakeDistrs_243 = StakeDistrs
pattern C_StakeDistrs_245 a0 a1 = StakeDistrs a0 a1
check_StakeDistrs_245 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_VDeleg_1681
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    Integer Integer ->
  T_StakeDistrs_243
check_StakeDistrs_245 = StakeDistrs
cover_StakeDistrs_243 :: StakeDistrs -> ()
cover_StakeDistrs_243 x
  = case x of
      StakeDistrs _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_244 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_244 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_246 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_246
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2540 v1 v2 v3
                -> coe
                     C_MkRatifyState_11367
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_151
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                        (coe v4) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                            (coe v5))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1058
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1060
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1062
                                 (coe v1))))
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
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1064
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1066
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_11367 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2540
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1068 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_151
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                            (let v10
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                             coe
                                                               (let v11
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                          (coe v10) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                              (coe v11))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_151 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1068
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_72
                                                         (let v10
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                          coe
                                                            (let v11
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                       (coe v10) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
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
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                                                               (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_430
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_1733 ->
  T_RatifyState_11365 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12049) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_11365
ratifyStep = coe d_ratify'45'step_248
d_ratify'45'step_248 ::
  T_RatifyEnv_1733 ->
  T_RatifyState_11365 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12049] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_11365
d_ratify'45'step_248 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'RatifyState_246)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892)))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_20)
               (coe d_Conv'45'RatifyState_246))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFIES_2306
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_242
            v0))
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyEnv
d_RatifyEnv_1733 = ()
type T_RatifyEnv_1733 = RatifyEnv
pattern C_MkRatifyEnv_1735 a0 a1 a2 a3 a4 a5 a6 = MkRatifyEnv a0 a1 a2 a3 a4 a5 a6
check_MkRatifyEnv_1735 ::
  T_StakeDistrs_243 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       ()
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589) ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    Integer
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.T_StakePoolParams_81 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_589
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_VDeleg_1681 ->
  T_RatifyEnv_1733
check_MkRatifyEnv_1735 = MkRatifyEnv
cover_RatifyEnv_1733 :: RatifyEnv -> ()
cover_RatifyEnv_1733 x
  = case x of
      MkRatifyEnv _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyState
d_RatifyState_11365 = ()
type T_RatifyState_11365 = RatifyState
pattern C_MkRatifyState_11367 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_11367 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_149 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12049) ->
  Bool -> T_RatifyState_11365
check_MkRatifyState_11367 = MkRatifyState
cover_RatifyState_11365 :: RatifyState -> ()
cover_RatifyState_11365 x
  = case x of
      MkRatifyState _ _ _ -> ()
