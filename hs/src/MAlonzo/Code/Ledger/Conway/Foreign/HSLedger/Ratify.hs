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
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_EnactStateOf_36 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1030
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_38 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_38
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1042
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState
d_HasEnactState_40 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasPParams-EnactState
d_HasPParams'45'EnactState_44 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_458
d_HasPParams'45'EnactState_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1038
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasccMaxTermLength_498
d_HasccMaxTermLength'45'EnactState_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1040
-- Ledger.Conway.Foreign.HSLedger.Ratify._.ccCreds
d_ccCreds_48 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1044
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHash
d_getHash_50 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1050
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHashES
d_getHashES_52 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1062
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.epoch
d_epoch_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_978 ->
  Integer
d_epoch_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_990 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.gid
d_gid_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_986 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.treasury
d_treasury_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_978 ->
  Integer
d_treasury_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_988
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.cc
d_cc_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.constitution
d_constitution_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pparams
d_pparams_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pv
d_pv_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.withdrawals
d_withdrawals_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1014
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_EnactStateOf_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1030
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._._∧_
d__'8743'__96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__96 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__98 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__100 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.CCData
d_CCData_102 :: ()
d_CCData_102 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-RatifyState
d_HasCast'45'RatifyState_104 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2448
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1022
d_HasEnactState'45'RatifyState_106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_2428
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState
d_HasRatifyState_108 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Is-nothing?
d_Is'45'nothing'63'_112 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_112 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_2922
      v1
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsCC
d_IsCC_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_806 ->
  ()
d_IsCC_114 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsDRep
d_IsDRep_116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_806 ->
  ()
d_IsDRep_116 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.IsSPO
d_IsSPO_118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_806 ->
  ()
d_IsSPO_118 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_126 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_130 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyStateOf
d_RatifyStateOf_134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2412 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
d_RatifyStateOf_134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_136 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptConds
d_acceptConds_140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_140 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted
d_accepted_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  ()
d_accepted_142 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted?
d_accepted'63'_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_144
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2950
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedBy
d_acceptedBy_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_794 ->
  ()
d_acceptedBy_146 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedBy?
d_acceptedBy'63'_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_794 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBy'63'_2938
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedStakeRatio
d_acceptedStakeRatio_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_794 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_806] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStakeRatio_2628
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.actualVotes
d_actualVotes_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2450
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.canVote
d_canVote_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_794 ->
  ()
d_canVote_154 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.defer
d_defer_156 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_156
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defer_2186
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed
d_delayed_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  Bool -> ()
d_delayed_158 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed?
d_delayed'63'_160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_160
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2906
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayingAction
d_delayingAction_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  Bool
d_delayingAction_162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2796
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired
d_expired_164 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  ()
d_expired_164 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired?
d_expired'63'_166 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_928 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2966
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getStakeDist
d_getStakeDist_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_794 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_806] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_getStakeDist_2618
-- Ledger.Conway.Foreign.HSLedger.Ratify._.govRole
d_govRole_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_806 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_794
d_govRole_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_govRole_2432
-- Ledger.Conway.Foreign.HSLedger.Ratify._.maxThreshold
d_maxThreshold_172 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_maxThreshold_2188
-- Ledger.Conway.Foreign.HSLedger.Ratify._.threshold
d_threshold_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_844 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_794 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_2210
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev
d_verifyPrev_176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  ()
d_verifyPrev_176 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev?
d_verifyPrev'63'_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_826 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_2868
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.vote
d_vote_180 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_180
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_vote_2184
-- Ledger.Conway.Foreign.HSLedger.Ratify._.─
d_'9472'_182 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_'9472'_2206
-- Ledger.Conway.Foreign.HSLedger.Ratify._.✓†
d_'10003''8224'_184 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_'10003''8224'_2208
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2412 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
d_RatifyStateOf_196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_2420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_2382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  Integer
d_currentEpoch_202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_2378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.delegatees
d_delegatees_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_2388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_2380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.pools
d_pools_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_2386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2352
d_stakeDistrs_210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  Integer
d_treasury_212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_2384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  Bool
d_delay_216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_es_218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs
d_StakeDistrs_219 = ()
type T_StakeDistrs_219 = StakeDistrs
pattern C_StakeDistrs_221 a0 = StakeDistrs a0
check_StakeDistrs_221 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_VDeleg_743
    Integer ->
  T_StakeDistrs_219
check_StakeDistrs_221 = StakeDistrs
cover_StakeDistrs_219 :: StakeDistrs -> ()
cover_StakeDistrs_219 x
  = case x of
      StakeDistrs _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistr
d_stakeDistr_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFIES
d_Computational'45'RATIFIES_228 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_228
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFIES_2220
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFY
d_Computational'45'RATIFY_230 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFY_2218
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete
d_RATIFIES'45'complete_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_232 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete'
d_RATIFIES'45'complete''_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_234 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-deterministic
d_RATIFIES'45'deterministic_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_236 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_238 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total
d_RATIFIES'45'total_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_RATIFIES'45'total_2230
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total'
d_RATIFIES'45'total''_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2360 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_242
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_RATIFIES'45'total''_2250
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_244 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_244 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_246 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_246
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358 v1
                -> coe
                     C_StakeDistrs_221
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
              C_StakeDistrs_221 v1
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v2
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v3
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                         (coe v2) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                       (coe v3)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v1)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_248 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_248 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_250 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_250
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkRatifyEnv_819
                     (coe
                        C_StakeDistrs_221
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
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
              C_MkRatifyEnv_819 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358 v9
                                     -> coe
                                          C_StakeDistrs_221
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
                                   C_StakeDistrs_221 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
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
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v7)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_252 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_252 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_254 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_254
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2406 v1 v2 v3
                -> coe
                     C_MkRatifyState_10473
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                        (coe v4) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                            (coe v5))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1014
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_10473 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2406
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1016 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
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
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                          (coe v10) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                              (coe v11))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1016
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
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                       (coe v10) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                               (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.ratify-debug
ratifyDebug ::
  T_RatifyEnv_817 ->
  T_RatifyState_10471 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11929) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
ratifyDebug = coe d_ratify'45'debug_256
d_ratify'45'debug_256 ::
  T_RatifyEnv_817 ->
  T_RatifyState_10471 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11929] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_ratify'45'debug_256 v0 v1 v2
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
                       (coe du_govActionInfo_284 (coe v0) (coe v1) (coe v3))))
               (coe ("" :: Data.Text.Text)) (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.govActionInfo
d_govActionInfo_284 ::
  T_RatifyEnv_817 ->
  T_RatifyState_10471 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11929] ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11929 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_govActionInfo_284 v0 v1 ~v2 v3 = du_govActionInfo_284 v0 v1 v3
du_govActionInfo_284 ::
  T_RatifyEnv_817 ->
  T_RatifyState_10471 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11929 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_govActionInfo_284 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("SPO: \t" :: Data.Text.Text)
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (MAlonzo.Code.Data.Rational.Show.d_show_6
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStakeRatio_2628
                      (coe
                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                         (coe
                            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_800)
                      (coe
                         MAlonzo.Code.Class.IsSet.du_dom_562
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1480
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2450
                            (coe
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390 v6 v7 v8 v9 v10 v11 v12
                                            -> coe
                                                 C_MkRatifyEnv_819
                                                 (coe
                                                    C_StakeDistrs_221
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
                                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
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
                                          C_MkRatifyEnv_819 v6 v7 v8 v9 v10 v11 v12
                                            -> coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                       (coe
                                                          (\ v13 ->
                                                             case coe v13 of
                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358 v14
                                                                 -> coe
                                                                      C_StakeDistrs_221
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
                                                               C_StakeDistrs_221 v14
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                            (let v15
                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                             coe
                                                                               (let v16
                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                          (coe
                                                                                             v15) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
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
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                     (coe v13) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                         (coe v14))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_254 v1))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_254 v1))))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                     v4)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_940
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                  v4))))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2376
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_250
                            v0))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2450
                         (coe
                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                            (coe
                               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20
                            (coe
                               MAlonzo.Code.Foreign.Convertible.C_constructor_22
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390 v6 v7 v8 v9 v10 v11 v12
                                         -> coe
                                              C_MkRatifyEnv_819
                                              (coe
                                                 C_StakeDistrs_221
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
                                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
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
                                       C_MkRatifyEnv_819 v6 v7 v8 v9 v10 v11 v12
                                         -> coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                    (coe
                                                       (\ v13 ->
                                                          case coe v13 of
                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358 v14
                                                              -> coe
                                                                   C_StakeDistrs_221
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
                                                            C_StakeDistrs_221 v14
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                         (let v15
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                          coe
                                                                            (let v16
                                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                       (coe v15) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
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
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                  (coe v13) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                      (coe v14))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_254 v1))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_254 v1))))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                  v4)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_940
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                               v4)))))
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   ("\t" :: Data.Text.Text)
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (let v5
                             = MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBy'63'_2938
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    d_Conv'45'RatifyEnv_250 v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'RatifyState_254 v1))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                    v4)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_SPO_800) in
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
                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStakeRatio_2628
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_798)
                                     (coe
                                        MAlonzo.Code.Class.IsSet.du_dom_562
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2450
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390 v6 v7 v8 v9 v10 v11 v12
                                                           -> coe
                                                                C_MkRatifyEnv_819
                                                                (coe
                                                                   C_StakeDistrs_221
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
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
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
                                                         C_MkRatifyEnv_819 v6 v7 v8 v9 v10 v11 v12
                                                           -> coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                      (coe
                                                                         (\ v13 ->
                                                                            case coe v13 of
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358 v14
                                                                                -> coe
                                                                                     C_StakeDistrs_221
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
                                                                              C_StakeDistrs_221 v14
                                                                                -> coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                           (let v15
                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                            coe
                                                                                              (let v16
                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                         (coe
                                                                                                            v15) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
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
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                    (coe v13) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                        (coe v14))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_254 v1))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_254 v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                    v4)))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_940
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                 v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2376
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           d_Conv'45'RatifyEnv_250 v0))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2450
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390 v6 v7 v8 v9 v10 v11 v12
                                                        -> coe
                                                             C_MkRatifyEnv_819
                                                             (coe
                                                                C_StakeDistrs_221
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
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
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
                                                      C_MkRatifyEnv_819 v6 v7 v8 v9 v10 v11 v12
                                                        -> coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                   (coe
                                                                      (\ v13 ->
                                                                         case coe v13 of
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358 v14
                                                                             -> coe
                                                                                  C_StakeDistrs_221
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
                                                                           C_StakeDistrs_221 v14
                                                                             -> coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                        (let v15
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                         coe
                                                                                           (let v16
                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                      (coe
                                                                                                         v15) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
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
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                 (coe v13) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                     (coe v14))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_254 v1))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_254 v1))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                 v4)))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_940
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                              v4)))))
                               (coe
                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                  ("\t" :: Data.Text.Text)
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                     (let v5
                                            = MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBy'63'_2938
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'RatifyEnv_250 v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Conv'45'RatifyState_254 v1))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_DRep_798) in
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStakeRatio_2628
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_796)
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2450
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390 v6 v7 v8 v9 v10 v11 v12
                                                                          -> coe
                                                                               C_MkRatifyEnv_819
                                                                               (coe
                                                                                  C_StakeDistrs_221
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
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
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
                                                                        C_MkRatifyEnv_819 v6 v7 v8 v9 v10 v11 v12
                                                                          -> coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                     (coe
                                                                                        (\ v13 ->
                                                                                           case coe
                                                                                                  v13 of
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358 v14
                                                                                               -> coe
                                                                                                    C_StakeDistrs_221
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
                                                                                             C_StakeDistrs_221 v14
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                          (let v15
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                           coe
                                                                                                             (let v16
                                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                        (coe
                                                                                                                           v15) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
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
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                   (coe
                                                                                                      v13) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                       (coe
                                                                                                          v14))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_254
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_254
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                                   v4)))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_940
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                                v4))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2376
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          d_Conv'45'RatifyEnv_250 v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2450
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390 v6 v7 v8 v9 v10 v11 v12
                                                                       -> coe
                                                                            C_MkRatifyEnv_819
                                                                            (coe
                                                                               C_StakeDistrs_221
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
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2356
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
                                                                     C_MkRatifyEnv_819 v6 v7 v8 v9 v10 v11 v12
                                                                       -> coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2390
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                  (coe
                                                                                     (\ v13 ->
                                                                                        case coe
                                                                                               v13 of
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358 v14
                                                                                            -> coe
                                                                                                 C_StakeDistrs_221
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
                                                                                          C_StakeDistrs_221 v14
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2358
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                       (let v15
                                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                        coe
                                                                                                          (let v16
                                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                     (coe
                                                                                                                        v15) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_958
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
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
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                (coe
                                                                                                   v13) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_200
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                    (coe
                                                                                                       v14))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
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
                                                             MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_254 v1))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_254 v1))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_850
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_946
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                                v4)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_940
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                             v4)))))
                                              (coe
                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                 ("\t" :: Data.Text.Text)
                                                 (coe
                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                    (let v5
                                                           = MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBy'63'_2938
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'RatifyEnv_250 v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     d_Conv'45'RatifyState_254 v1))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_CC_796) in
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
  T_RatifyEnv_817 ->
  T_RatifyState_10471 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11929) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_10471
ratifyStep = coe d_ratify'45'step_338
d_ratify'45'step_338 ::
  T_RatifyEnv_817 ->
  T_RatifyState_10471 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11929] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_10471
d_ratify'45'step_338 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'RatifyState_254)
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
                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_844)))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_20)
               (coe d_Conv'45'RatifyState_254))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_Computational'45'RATIFIES_2220
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_250
            v0))
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyEnv
d_RatifyEnv_817 = ()
type T_RatifyEnv_817 = RatifyEnv
pattern C_MkRatifyEnv_819 a0 a1 a2 a3 a4 a5 a6 = MkRatifyEnv a0 a1 a2 a3 a4 a5 a6
check_MkRatifyEnv_819 ::
  T_StakeDistrs_219 ->
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
  T_RatifyEnv_817
check_MkRatifyEnv_819 = MkRatifyEnv
cover_RatifyEnv_817 :: RatifyEnv -> ()
cover_RatifyEnv_817 x
  = case x of
      MkRatifyEnv _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyState
d_RatifyState_10471 = ()
type T_RatifyState_10471 = RatifyState
pattern C_MkRatifyState_10473 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_10473 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_131 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_11929) ->
  Bool -> T_RatifyState_10471
check_MkRatifyState_10473 = MkRatifyState
cover_RatifyState_10471 :: RatifyState -> ()
cover_RatifyState_10471 x
  = case x of
      MkRatifyState _ _ _ -> ()
