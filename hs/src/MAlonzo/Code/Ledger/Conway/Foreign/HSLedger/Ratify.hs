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
data StakeDistrs = StakeDistrs {stakeDistr :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.VDeleg Integer)}
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
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1044 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016
d_EnactStateOf_36 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1052
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_38 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_38
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1066
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState
d_HasEnactState_40 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasPParams-EnactState
d_HasPParams'45'EnactState_44 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'EnactState_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1060
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasWithdrawals-EnactState
d_HasWithdrawals'45'EnactState_46 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'EnactState_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasWithdrawals'45'EnactState_1064
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_438
d_HasccMaxTermLength'45'EnactState_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1062
-- Ledger.Conway.Foreign.HSLedger.Ratify._.ccCreds
d_ccCreds_50 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1068
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHash
d_getHash_52 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_808 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1074
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHashES
d_getHashES_54 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_808 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_54
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1086
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.epoch
d_epoch_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1000 ->
  Integer
d_epoch_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1012
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.gid
d_gid_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1008 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.treasury
d_treasury_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1000 ->
  Integer
d_treasury_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_1010
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.cc
d_cc_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1028 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.constitution
d_constitution_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1030
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pparams
d_pparams_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1034
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pv
d_pv_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1032 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.withdrawals
d_withdrawals_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1036
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1044 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016
d_EnactStateOf_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1052
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._._∧_
d__'8743'__98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__98 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__100 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__102 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.CCData
d_CCData_104 :: ()
d_CCData_104 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-RatifyState
d_HasCast'45'RatifyState_106 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2534
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1044
d_HasEnactState'45'RatifyState_108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_2512
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState
d_HasRatifyState_110 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_114 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasTreasury'45'RatifyEnv_2514
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Is-nothing?
d_Is'45'nothing'63'_116 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_116 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_3008
      v1
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsCC
d_IsCC_118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_782 ->
  ()
d_IsCC_118 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsDRep
d_IsDRep_120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_782 ->
  ()
d_IsDRep_120 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsSPO
d_IsSPO_122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_782 ->
  ()
d_IsSPO_122 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_130 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_134 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyStateOf
d_RatifyStateOf_138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2496 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476
d_RatifyStateOf_138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2504
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_140 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptConds
d_acceptConds_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_144 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted
d_accepted_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_964 ->
  ()
d_accepted_146 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted?
d_accepted'63'_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_964 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_3036
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedBy
d_acceptedBy_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  ()
d_acceptedBy_150 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedBy?
d_acceptedBy'63'_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBy'63'_3024
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedStakeRatio
d_acceptedStakeRatio_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_782] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_154
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStakeRatio_2714
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.actualVotes
d_actualVotes_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_808 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2536
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.canVote
d_canVote_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  ()
d_canVote_158 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.defer
d_defer_160 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_160
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defer_2270
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed
d_delayed_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_808 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  Bool -> ()
d_delayed_162 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed?
d_delayed'63'_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_808 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2992
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayingAction
d_delayingAction_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_808 ->
  Bool
d_delayingAction_166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2882
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired
d_expired_168 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_964 ->
  ()
d_expired_168 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired?
d_expired'63'_170 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_964 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_3052
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getStakeDist
d_getStakeDist_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_782] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_getStakeDist_2704
-- Ledger.Conway.Foreign.HSLedger.Ratify._.govRole
d_govRole_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_782 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774
d_govRole_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_govRole_2518
-- Ledger.Conway.Foreign.HSLedger.Ratify._.maxThreshold
d_maxThreshold_176 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_maxThreshold_2272
-- Ledger.Conway.Foreign.HSLedger.Ratify._.threshold
d_threshold_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_862 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_2294
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev
d_verifyPrev_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_808 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  ()
d_verifyPrev_180 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev?
d_verifyPrev'63'_182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_808 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_2954
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.vote
d_vote_184 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_184
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_vote_2268
-- Ledger.Conway.Foreign.HSLedger.Ratify._.─
d_'9472'_186 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_186
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_'9472'_2290
-- Ledger.Conway.Foreign.HSLedger.Ratify._.✓†
d_'10003''8224'_188 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_'10003''8224'_2292
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2496 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476
d_RatifyStateOf_200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2504
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_2466
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  Integer
d_currentEpoch_206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_2462
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.delegatees
d_delegatees_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_2472
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_2464
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.pools
d_pools_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_2470
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2436
d_stakeDistrs_214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  Integer
d_treasury_216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_2468
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  Bool
d_delay_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2488
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016
d_es_222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2486
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistr
d_stakeDistr_228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2440
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFIES
d_Computational'45'RATIFIES_232 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFIES_2272
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFY
d_Computational'45'RATIFY_234 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_234
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFY_2270
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete
d_RATIFIES'45'complete_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_236 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete'
d_RATIFIES'45'complete''_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_238 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-deterministic
d_RATIFIES'45'deterministic_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_240 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_242 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs
d_StakeDistrs_243 = ()
type T_StakeDistrs_243 = StakeDistrs
pattern C_StakeDistrs_245 a0 = StakeDistrs a0
check_StakeDistrs_245 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_VDeleg_743
    Integer ->
  T_StakeDistrs_243
check_StakeDistrs_245 = StakeDistrs
cover_StakeDistrs_243 :: StakeDistrs -> ()
cover_StakeDistrs_243 x
  = case x of
      StakeDistrs _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total
d_RATIFIES'45'total_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_244
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_RATIFIES'45'total_2282
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total'
d_RATIFIES'45'total''_246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2476 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_246
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_RATIFIES'45'total''_2302
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_248 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_248 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_250 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_250
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442 v1
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_StakeDistrs_245 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v2
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v3
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                         (coe v2) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1002
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                       (coe v3)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v1)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_252 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_252 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_254 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_254
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkRatifyEnv_843
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2440
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_843 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442 v9
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   C_StakeDistrs_245 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1002
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                            (coe v11)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v9)))
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
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v7)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_256 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_256 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_258 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_258
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2490 v1 v2 v3
                -> coe
                     C_MkRatifyState_10475
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1028
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1030
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1032
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1034
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1036
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
              C_MkRatifyState_10475 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2490
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1038 v5 v6 v7 v8 v9
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1038
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
-- Ledger.Conway.Foreign.HSLedger.Ratify.ratify-debug
ratifyDebug ::
  T_RatifyEnv_841 ->
  T_RatifyState_10473 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12089) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
ratifyDebug = coe d_ratify'45'debug_260
d_ratify'45'debug_260 ::
  T_RatifyEnv_841 ->
  T_RatifyState_10473 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12089] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_ratify'45'debug_260 v0 v1 v2
  = coe
      MAlonzo.Code.Data.String.Base.d__'43''43'__20
      ("Number of govactions: " :: Data.Text.Text)
      (coe
         MAlonzo.Code.Data.String.Base.d__'43''43'__20
         (coe
            MAlonzo.Code.Data.Nat.Show.d_show_56
            (coe MAlonzo.Code.Data.List.Base.du_length_268 v2))
         (coe
            MAlonzo.Code.Data.String.Base.d__'43''43'__20
            ("\n" :: Data.Text.Text)
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_216
               (coe
                  (\ v3 v4 ->
                     coe
                       MAlonzo.Code.Data.String.Base.d__'43''43'__20 v4
                       (coe du_govActionInfo_288 (coe v0) (coe v1) (coe v3))))
               (coe ("" :: Data.Text.Text)) (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.govActionInfo
d_govActionInfo_288 ::
  T_RatifyEnv_841 ->
  T_RatifyState_10473 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12089] ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12089 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_govActionInfo_288 v0 v1 ~v2 v3 = du_govActionInfo_288 v0 v1 v3
du_govActionInfo_288 ::
  T_RatifyEnv_841 ->
  T_RatifyState_10473 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12089 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_govActionInfo_288 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("SPO: \t" :: Data.Text.Text)
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (MAlonzo.Code.Data.Rational.Show.d_show_6
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStakeRatio_2714
                      (coe
                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                         (coe
                            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_780)
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_562
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1480
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2536
                            (coe
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474 v6 v7 v8 v9 v10 v11 v12
                                            -> coe
                                                 C_MkRatifyEnv_843
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
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2440
                                                                (coe v6))))))
                                                 (coe v7)
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
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v8))))
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
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9))))
                                                 (coe v10)
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
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v11))))
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
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v12))))
                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          C_MkRatifyEnv_843 v6 v7 v8 v9 v10 v11 v12
                                            -> coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                       (coe
                                                          (\ v13 ->
                                                             case coe v13 of
                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442 v14
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
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v14))))
                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                       (coe
                                                          (\ v13 ->
                                                             case coe v13 of
                                                               C_StakeDistrs_245 v14
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                            (let v15
                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                             coe
                                                                               (let v16
                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                          (coe
                                                                                             v15) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1002
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                                                        (coe
                                                                                           v16)))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                            (coe v14)))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                    v6)
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                       (let v13
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                        coe
                                                          (let v14
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                      (coe v14))))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                       (let v13
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                        coe
                                                          (let v14
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                      (coe v14))))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                       (coe v9)))
                                                 (coe v10)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                       (coe
                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                       (coe v11)))
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                       (let v13
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                        coe
                                                          (let v14
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                      (coe v14))))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                       (coe v12)))
                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                               v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1034
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_258 v1))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1028
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_258 v1))))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_868
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_982
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                     v4)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_976
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                  v4))))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2460
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_254
                            v0))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2536
                         (coe
                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                            (coe
                               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20
                            (coe
                               MAlonzo.Code.Foreign.Convertible.C_constructor_22
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474 v6 v7 v8 v9 v10 v11 v12
                                         -> coe
                                              C_MkRatifyEnv_843
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
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2440
                                                             (coe v6))))))
                                              (coe v7)
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
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8))))
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
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v9))))
                                              (coe v10)
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
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v11))))
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
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v12))))
                                       _ -> MAlonzo.RTE.mazUnreachableError))
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       C_MkRatifyEnv_843 v6 v7 v8 v9 v10 v11 v12
                                         -> coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                    (coe
                                                       (\ v13 ->
                                                          case coe v13 of
                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442 v14
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
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v14))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                    (coe
                                                       (\ v13 ->
                                                          case coe v13 of
                                                            C_StakeDistrs_245 v14
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                         (let v15
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                          coe
                                                                            (let v16
                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                       (coe v15) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1002
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                                                     (coe v16)))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                         (coe v14)))
                                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                                 v6)
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                    (let v13
                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                     coe
                                                       (let v14
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                   (coe v14))))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                    (coe v8)))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                    (let v13
                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                     coe
                                                       (let v14
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                   (coe v14))))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                    (coe v9)))
                                              (coe v10)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                    (coe
                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                    (coe v11)))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                    (let v13
                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                     coe
                                                       (let v14
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                   (coe v14))))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                    (coe v12)))
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                            v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1034
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_258 v1))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1028
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_258 v1))))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_868
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_982
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                  v4)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_976
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                               v4)))))
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   ("\t" :: Data.Text.Text)
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (let v5
                             = MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBy'63'_3024
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    d_Conv'45'RatifyEnv_254 v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'RatifyState_258 v1))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                    v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_780) in
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
                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStakeRatio_2714
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_778)
                                     (coe
                                        MAlonzo.Code.Class.IsSet.du_dom_562
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2536
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474 v6 v7 v8 v9 v10 v11 v12
                                                           -> coe
                                                                C_MkRatifyEnv_843
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
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2440
                                                                               (coe v6))))))
                                                                (coe v7)
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
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v8))))
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
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v9))))
                                                                (coe v10)
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
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v11))))
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
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v12))))
                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         C_MkRatifyEnv_843 v6 v7 v8 v9 v10 v11 v12
                                                           -> coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                      (coe
                                                                         (\ v13 ->
                                                                            case coe v13 of
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442 v14
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
                                                                              C_StakeDistrs_245 v14
                                                                                -> coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                           (let v15
                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                            coe
                                                                                              (let v16
                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                         (coe
                                                                                                            v15) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1002
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                                                                       (coe
                                                                                                          v16)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                           (coe
                                                                                              v14)))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                   v6)
                                                                (coe v7)
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                      (let v13
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                       coe
                                                                         (let v14
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                     (coe v14))))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                      (coe v8)))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                      (let v13
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                       coe
                                                                         (let v14
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                     (coe v14))))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                      (coe v9)))
                                                                (coe v10)
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                      (coe
                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                      (coe v11)))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                      (let v13
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                       coe
                                                                         (let v14
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                     (coe v14))))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                      (coe v12)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                              v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1034
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_258 v1))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1028
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_258 v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_868
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_982
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                    v4)))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_976
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                 v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2460
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           d_Conv'45'RatifyEnv_254 v0))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2536
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474 v6 v7 v8 v9 v10 v11 v12
                                                        -> coe
                                                             C_MkRatifyEnv_843
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
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2440
                                                                            (coe v6))))))
                                                             (coe v7)
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
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v8))))
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
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v9))))
                                                             (coe v10)
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
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v11))))
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
                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))))
                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      C_MkRatifyEnv_843 v6 v7 v8 v9 v10 v11 v12
                                                        -> coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                   (coe
                                                                      (\ v13 ->
                                                                         case coe v13 of
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442 v14
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
                                                                           C_StakeDistrs_245 v14
                                                                             -> coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                        (let v15
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                         coe
                                                                                           (let v16
                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                      (coe
                                                                                                         v15) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1002
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                                                                    (coe
                                                                                                       v16)))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                        (coe v14)))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                v6)
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                   (let v13
                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                    coe
                                                                      (let v14
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                  (coe v14))))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                   (let v13
                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                    coe
                                                                      (let v14
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                  (coe v14))))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                   (coe v9)))
                                                             (coe v10)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                   (coe v11)))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                   (let v13
                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                    coe
                                                                      (let v14
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                  (coe v14))))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                   (coe v12)))
                                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                                           v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1034
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_258 v1))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1028
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_258 v1))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_868
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_982
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                 v4)))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_976
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                              v4)))))
                               (coe
                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                  ("\t" :: Data.Text.Text)
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                     (let v5
                                            = MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBy'63'_3024
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'RatifyEnv_254 v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Conv'45'RatifyState_258 v1))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_778) in
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStakeRatio_2714
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_776)
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2536
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474 v6 v7 v8 v9 v10 v11 v12
                                                                          -> coe
                                                                               C_MkRatifyEnv_843
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
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2440
                                                                                              (coe
                                                                                                 v6))))))
                                                                               (coe v7)
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
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v8))))
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
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v9))))
                                                                               (coe v10)
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
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v11))))
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
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v12))))
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        C_MkRatifyEnv_843 v6 v7 v8 v9 v10 v11 v12
                                                                          -> coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                     (coe
                                                                                        (\ v13 ->
                                                                                           case coe
                                                                                                  v13 of
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442 v14
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
                                                                                             C_StakeDistrs_245 v14
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                          (let v15
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                           coe
                                                                                                             (let v16
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                                        (coe
                                                                                                                           v15) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1002
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                                                                                      (coe
                                                                                                                         v16)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                          (coe
                                                                                                             v14)))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                  v6)
                                                                               (coe v7)
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                     (let v13
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                      coe
                                                                                        (let v14
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                    (coe
                                                                                                       v14))))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                     (coe v8)))
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                     (let v13
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                      coe
                                                                                        (let v14
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                    (coe
                                                                                                       v14))))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                     (coe v9)))
                                                                               (coe v10)
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                     (coe v11)))
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                     (let v13
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                      coe
                                                                                        (let v14
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                    (coe
                                                                                                       v14))))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                     (coe v12)))
                                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                                             v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1034
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_258
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1028
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_258
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_868
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_982
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                                   v4)))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_976
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                                v4))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2460
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          d_Conv'45'RatifyEnv_254 v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2536
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474 v6 v7 v8 v9 v10 v11 v12
                                                                       -> coe
                                                                            C_MkRatifyEnv_843
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
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2440
                                                                                           (coe
                                                                                              v6))))))
                                                                            (coe v7)
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
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v8))))
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
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v9))))
                                                                            (coe v10)
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
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v11))))
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
                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v12))))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     C_MkRatifyEnv_843 v6 v7 v8 v9 v10 v11 v12
                                                                       -> coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2474
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                  (coe
                                                                                     (\ v13 ->
                                                                                        case coe
                                                                                               v13 of
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442 v14
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
                                                                                          C_StakeDistrs_245 v14
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2442
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                       (let v15
                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                        coe
                                                                                                          (let v16
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                                     (coe
                                                                                                                        v15) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1002
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
                                                                                                                   (coe
                                                                                                                      v16)))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                       (coe
                                                                                                          v14)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                               v6)
                                                                            (coe v7)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                  (let v13
                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                   coe
                                                                                     (let v14
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                 (coe
                                                                                                    v14))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                  (coe v8)))
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                  (let v13
                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                   coe
                                                                                     (let v14
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                 (coe
                                                                                                    v14))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                  (coe v9)))
                                                                            (coe v10)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_68))
                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                  (coe v11)))
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                  (let v13
                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                   coe
                                                                                     (let v14
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                                                                                                 (coe
                                                                                                    v14))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                  (coe v12)))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)))
                                                          v0)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1034
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_258 v1))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1028
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_258 v1))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_868
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_982
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                                v4)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_976
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                             v4)))))
                                              (coe
                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                 ("\t" :: Data.Text.Text)
                                                 (coe
                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                    (let v5
                                                           = MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBy'63'_3024
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'RatifyEnv_254 v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2484
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     d_Conv'45'RatifyState_258 v1))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_892
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_776) in
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
  T_RatifyEnv_841 ->
  T_RatifyState_10473 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12089) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_10473
ratifyStep = coe d_ratify'45'step_342
d_ratify'45'step_342 ::
  T_RatifyEnv_841 ->
  T_RatifyState_10473 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12089] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_10473
d_ratify'45'step_342 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'RatifyState_258)
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
               (coe d_Conv'45'RatifyState_258))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFIES_2272
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_254
            v0))
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyEnv
d_RatifyEnv_841 = ()
type T_RatifyEnv_841 = RatifyEnv
pattern C_MkRatifyEnv_843 a0 a1 a2 a3 a4 a5 a6 = MkRatifyEnv a0 a1 a2 a3 a4 a5 a6
check_MkRatifyEnv_843 ::
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
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_VDeleg_743 ->
  T_RatifyEnv_841
check_MkRatifyEnv_843 = MkRatifyEnv
cover_RatifyEnv_841 :: RatifyEnv -> ()
cover_RatifyEnv_841 x
  = case x of
      MkRatifyEnv _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyState
d_RatifyState_10473 = ()
type T_RatifyState_10473 = RatifyState
pattern C_MkRatifyState_10475 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_10475 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_149 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12089) ->
  Bool -> T_RatifyState_10473
check_MkRatifyState_10475 = MkRatifyState
cover_RatifyState_10473 :: RatifyState -> ()
cover_RatifyState_10473 x
  = case x of
      MkRatifyState _ _ _ -> ()
