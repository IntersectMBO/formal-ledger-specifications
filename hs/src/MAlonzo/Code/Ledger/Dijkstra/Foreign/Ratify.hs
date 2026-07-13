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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify where

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
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Foreign
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty

import GHC.Generics (Generic)
data StakeDistrs = MkStakeDistrs {sdStakeDistrVDeleg :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.VDeleg Integer), sdStakeDistrPools :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer Integer)}
  deriving (Show, Eq, Generic)
data RatifyEnv = MkRatifyEnv {reStakeDistrs :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.StakeDistrs, reCurrentEpoch :: Integer, reDreps :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential Integer), reCcHotKeys :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential (Maybe MAlonzo.Code.Ledger.Core.Foreign.Address.Credential)), reTreasury :: Integer, rePools :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.StakePoolParams), reDelegatees :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.VDeleg)}
  deriving (Show, Eq, Generic)
data RatifyState = MkRatifyState {rsEs :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.EnactState, rsRemoved :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet ((Integer, Integer), MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.GovActionState)), rsDelay :: Bool}
  deriving (Show, Eq, Generic)
-- Ledger.Dijkstra.Foreign.Ratify._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__10 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__10 = erased
-- Ledger.Dijkstra.Foreign.Ratify._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Ratify._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_14 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_14
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyEnv_2018
-- Ledger.Dijkstra.Foreign.Ratify._.HasCast-RatifyState
d_HasCast'45'RatifyState_16 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_16
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2020
-- Ledger.Dijkstra.Foreign.Ratify._.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_18 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_18
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'StakeDistrs_2016
-- Ledger.Dijkstra.Foreign.Ratify._.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_20 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
d_HasDReps'45'RatifyEnv_20
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasDReps'45'RatifyEnv_2012
-- Ledger.Dijkstra.Foreign.Ratify._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_22 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1258
d_HasEnactState'45'RatifyState_22
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2010
-- Ledger.Dijkstra.Foreign.Ratify._.HasRatifyState
d_HasRatifyState_24 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.Ratify._.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_28 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_28
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasTreasury'45'RatifyEnv_2014
-- Ledger.Dijkstra.Foreign.Ratify._.Is-just?
d_Is'45'just'63'_30 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_30 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_Is'45'just'63'_2520
      v1
-- Ledger.Dijkstra.Foreign.Ratify._.Is-nothing?
d_Is'45'nothing'63'_32 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_32 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_Is'45'nothing'63'_2508
      v1
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyEnv
d_RatifyEnv_40 = ()
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyState
d_RatifyState_44 = ()
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyStateOf
d_RatifyStateOf_48 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_HasRatifyState_1994 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974
d_RatifyStateOf_48 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_RatifyStateOf_2002
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.StakeDistrs
d_StakeDistrs_50 = ()
-- Ledger.Dijkstra.Foreign.Ratify._.acceptConds
d_acceptConds_54 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_54 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.accepted
d_accepted_56 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_56 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.accepted?
d_accepted'63'_58 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_58
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_accepted'63'_2604
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.acceptedByCC
d_acceptedByCC_60 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedByCC_60 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.acceptedByCC?
d_acceptedByCC'63'_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_62
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_acceptedByCC'63'_2534
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.acceptedByDRep
d_acceptedByDRep_64 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedByDRep_64 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.acceptedByDRep?
d_acceptedByDRep'63'_66 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_66
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_acceptedByDRep'63'_2588
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.acceptedBySPO
d_acceptedBySPO_68 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_acceptedBySPO_68 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.acceptedBySPO?
d_acceptedBySPO'63'_70 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_70
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_acceptedBySPO'63'_2596
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.canVote
d_canVote_72 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  ()
d_canVote_72 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.delayed
d_delayed_74 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  Bool -> ()
d_delayed_74 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.delayed?
d_delayed'63'_76 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_76
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delayed'63'_2492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.delayingAction
d_delayingAction_78 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
d_delayingAction_78
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_delayingAction_2380
-- Ledger.Dijkstra.Foreign.Ratify._.expired
d_expired_80 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_expired_80 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.expired?
d_expired'63'_82 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_82
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_expired'63'_2616
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.threshold
d_threshold_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_84
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_threshold_1760
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.verifyPrev
d_verifyPrev_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  ()
d_verifyPrev_86 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.verifyPrev?
d_verifyPrev'63'_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_88
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_verifyPrev'63'_2454
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.accepted
d_accepted_100 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_100 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.acceptedStake
d_acceptedStake_102 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_102
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_acceptedStake_2156
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.activeCC
d_activeCC_104 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_104 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_activeCC_2140
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.actualVotes
d_actualVotes_106 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_106
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_actualVotes_2148
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.castVotes
d_castVotes_108 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_108 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_castVotes_2128
      v3
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_110 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_110 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_getCCHotCredential_2130
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v4 v5
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.mT
d_mT_112 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_112 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_mT_2152
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v2 v3
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_114 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_sizeActiveCC_114 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_sizeActiveCC_2146
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.stakeDistr
d_stakeDistr_116 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_116
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistr_2154
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByCC.totalStake
d_totalStake_118 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_118
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_totalStake_2158
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.accepted
d_accepted_122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_122 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.acceptedStake
d_acceptedStake_124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_124 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_acceptedStake_2240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.activeDReps
d_activeDReps_126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_126 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_activeDReps_2228
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.actualVotes
d_actualVotes_128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_128 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_actualVotes_2236
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.castVotes
d_castVotes_130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_130 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_castVotes_2226
      v2
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_132 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_defaultDRepCredentialVotes_2234
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_134 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_predeterminedDRepVotes_2230
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v2
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.t
d_t_136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_136 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_t_2238
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v1 v2
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedByDRep.totalStake
d_totalStake_138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_138 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_totalStake_2242
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedBySPO.accepted
d_accepted_142 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  ()
d_accepted_142 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedBySPO.acceptedStake
d_acceptedStake_144 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_acceptedStake_144 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_acceptedStake_2302
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedBySPO.actualVotes
d_actualVotes_146 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_146 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_actualVotes_2298
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedBySPO.castVotes
d_castVotes_148 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_148 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_castVotes_2286
      v4
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedBySPO.defaultVote
d_defaultVote_150 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
d_defaultVote_150 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_defaultVote_2288
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v4 v5
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedBySPO.t
d_t_152 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_152 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_t_2300
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v3 v4
-- Ledger.Dijkstra.Foreign.Ratify._.AcceptedBySPO.totalStake
d_totalStake_154 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_totalStake_154 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_totalStake_2304
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Dijkstra.Foreign.Ratify._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_HasRatifyState_1994 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974
d_RatifyStateOf_158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_RatifyStateOf_2002
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_ccHotKeys_1964
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  Integer
d_currentEpoch_164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_currentEpoch_1960
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyEnv.delegatees
d_delegatees_166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delegatees_1970
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyEnv.dreps
d_dreps_168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_dreps_1962
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyEnv.pools
d_pools_170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_pools_1968
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1930
d_stakeDistrs_172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistrs_1958
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyEnv.treasury
d_treasury_174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  Integer
d_treasury_174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_treasury_1966
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyState.delay
d_delay_178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  Bool
d_delay_178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_1986
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyState.es
d_es_180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_es_180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_1982
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.RatifyState.removed
d_removed_182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_1984
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistrPools_1938
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistrVDeleg_1936
      (coe v0)
-- Ledger.Dijkstra.Foreign.Ratify._.Computational-RATIFIES
d_Computational'45'RATIFIES_192 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_192
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFIES_3174
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Ratify._.Computational-RATIFY
d_Computational'45'RATIFY_194 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_194
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFY_3172
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Ratify._.RATIFIES-complete
d_RATIFIES'45'complete_196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_196 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.RATIFIES-complete'
d_RATIFIES'45'complete''_198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_198 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.RATIFIES-deterministic
d_RATIFIES'45'deterministic_200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_200 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_202 = erased
-- Ledger.Dijkstra.Foreign.Ratify._.RATIFIES-total
d_RATIFIES'45'total_204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_204
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total_3184
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Ratify._.RATIFIES-total'
d_RATIFIES'45'total''_206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyEnv_1942 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_206
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total''_3204
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_208 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'StakeDistrs_208 = erased
-- Ledger.Dijkstra.Foreign.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_210 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'StakeDistrs_210
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1940 v1 v2
                -> coe
                     C_MkStakeDistrs_449
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkStakeDistrs_449 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1940
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v3
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v4
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                      (coe v3) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
                                    (coe v4)))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                (coe
                                   (\ v4 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v3))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                (coe
                                   (\ v4 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v3))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_212 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'RatifyEnv_212 = erased
-- Ledger.Dijkstra.Foreign.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_214 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'RatifyEnv_214
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1972 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkRatifyEnv_1907
                     (coe
                        C_MkStakeDistrs_449
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistrVDeleg_1936
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_stakeDistrPools_1938
                                    (coe v1))))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_1907 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1972
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1940 v9 v10
                                     -> coe
                                          C_MkStakeDistrs_449
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   C_MkStakeDistrs_449 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1940
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v11
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v12
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                           (coe v11) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
                                                         (coe v12)))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v12 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v11))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v8
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v9
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                      (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v9))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                       (coe v9))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                (coe
                                   (\ v9 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v8
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v9
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                      (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v9))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                       (coe v9))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                (coe
                                   (\ v9 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                (coe
                                   (\ v9 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v6))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v8
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v9
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                      (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v9))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                       (coe v9))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                (coe
                                   (\ v9 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_216 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'RatifyState_216 = erased
-- Ledger.Dijkstra.Foreign.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_218 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'RatifyState_218
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1988 v1 v2 v3
                -> coe
                     C_MkRatifyState_11883
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                        (coe v4) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v5))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                         (coe v5))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1246
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1250
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_11883 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_1988
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1252 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                            (let v10
                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                             coe
                                                               (let v11
                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                          (coe v10) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                              (coe v11))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                           (coe v11))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1252
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                         (let v10
                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                          coe
                                                            (let v11
                                                                   = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                                       (coe v10) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                        (coe v11))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v5))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v6))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v7))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                erased () erased
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                v8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v10
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                           (coe v10) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                            (coe v11)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v11))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v11))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                     (coe
                                                        (\ v11 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v10))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_1905 ->
  T_RatifyState_11881 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    () ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovActionState_6067 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_11881
ratifyStep = coe d_ratify'45'step_220
d_ratify'45'step_220 ::
  T_RatifyEnv_1905 ->
  T_RatifyState_11881 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovActionState_6067 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_11881
d_ratify'45'step_220 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe d_Conv'45'RatifyState_218)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                  (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45''8869'_18)
               (coe d_Conv'45'RatifyState_218))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFY_3172
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            d_Conv'45'RatifyEnv_214 v0))
-- Ledger.Dijkstra.Foreign.Ratify.ratifies-step
ratifiesStep ::
  T_RatifyEnv_1905 ->
  T_RatifyState_11881 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovActionState_6067) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_11881
ratifiesStep = coe d_ratifies'45'step_222
d_ratifies'45'step_222 ::
  T_RatifyEnv_1905 ->
  T_RatifyState_11881 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovActionState_6067] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_11881
d_ratifies'45'step_222 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe d_Conv'45'RatifyState_218)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe
               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
               (coe
                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                  (coe
                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                     (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                     (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45''8869'_18)
               (coe d_Conv'45'RatifyState_218))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFIES_3174
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            d_Conv'45'RatifyEnv_214 v0))
-- Ledger.Dijkstra.Foreign.Ratify.StakeDistrs
d_StakeDistrs_447 = ()
type T_StakeDistrs_447 = StakeDistrs
pattern C_MkStakeDistrs_449 a0 a1 = MkStakeDistrs a0 a1
check_MkStakeDistrs_449 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_VDeleg_731
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer Integer ->
  T_StakeDistrs_447
check_MkStakeDistrs_449 = MkStakeDistrs
cover_StakeDistrs_447 :: StakeDistrs -> ()
cover_StakeDistrs_447 x
  = case x of
      MkStakeDistrs _ _ -> ()
-- Ledger.Dijkstra.Foreign.Ratify.RatifyEnv
d_RatifyEnv_1905 = ()
type T_RatifyEnv_1905 = RatifyEnv
pattern C_MkRatifyEnv_1907 a0 a1 a2 a3 a4 a5 a6 = MkRatifyEnv a0 a1 a2 a3 a4 a5 a6
check_MkRatifyEnv_1907 ::
  T_StakeDistrs_447 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       () MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615) ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_StakePoolParams_79 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.T_VDeleg_731 ->
  T_RatifyEnv_1905
check_MkRatifyEnv_1907 = MkRatifyEnv
cover_RatifyEnv_1905 :: RatifyEnv -> ()
cover_RatifyEnv_1905 x
  = case x of
      MkRatifyEnv _ _ _ _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Ratify.RatifyState
d_RatifyState_11881 = ()
type T_RatifyState_11881 = RatifyState
pattern C_MkRatifyState_11883 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_11883 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.T_EnactState_1621 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.T_GovActionState_6067) ->
  Bool -> T_RatifyState_11881
check_MkRatifyState_11883 = MkRatifyState
cover_RatifyState_11881 :: RatifyState -> ()
cover_RatifyState_11881 x
  = case x of
      MkRatifyState _ _ _ -> ()
