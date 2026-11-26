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

module MAlonzo.Code.Ledger.Conway.Foreign.Ratify where

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
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
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
data StakeDistrs = StakeDistrs {stakeDistrVDeleg :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.VDeleg Integer), stakeDistrPools :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer Integer)}
  deriving (Show, Eq, Generic)
data RatifyEnv = MkRatifyEnv {reStakeDistrs :: MAlonzo.Code.Ledger.Conway.Foreign.Ratify.StakeDistrs, reCurrentEpoch :: Integer, reDreps :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential Integer), reCcHotKeys :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential (Maybe MAlonzo.Code.Ledger.Core.Foreign.Address.Credential)), reTreasury :: Integer, rePools :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Conway.Foreign.Certs.StakePoolParams), reDelegatees :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.VDeleg)}
  deriving (Show, Eq, Generic)
data RatifyState = MkRatifyState {rsEnactState :: MAlonzo.Code.Ledger.Conway.Foreign.Enact.EnactState, rsRemoved :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSSet ((Integer, Integer), MAlonzo.Code.Ledger.Conway.Foreign.Gov.GovActionState)), rsDelay :: Bool}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__10 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Ratify._.EnactEnv
d_EnactEnv_26 = ()
-- Ledger.Conway.Foreign.Ratify._.EnactState
d_EnactState_30 = ()
-- Ledger.Conway.Foreign.Ratify._.EnactStateOf
d_EnactStateOf_34 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_34 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_36 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_36
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1236
-- Ledger.Conway.Foreign.Ratify._.HasEnactState
d_HasEnactState_38 a0 a1 = ()
-- Ledger.Conway.Foreign.Ratify._.HasPParams-EnactState
d_HasPParams'45'EnactState_42 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'EnactState_42
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1230
-- Ledger.Conway.Foreign.Ratify._.HasWithdrawals-EnactState
d_HasWithdrawals'45'EnactState_44 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'EnactState_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasWithdrawals'45'EnactState_1234
-- Ledger.Conway.Foreign.Ratify._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_458
d_HasccMaxTermLength'45'EnactState_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1232
-- Ledger.Conway.Foreign.Ratify._.ccCreds
d_ccCreds_48 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1238
-- Ledger.Conway.Foreign.Ratify._.getHash
d_getHash_50 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1244
-- Ledger.Conway.Foreign.Ratify._.getHashES
d_getHashES_52 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1256
-- Ledger.Conway.Foreign.Ratify._.EnactEnv.epoch
d_epoch_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1170 ->
  Integer
d_epoch_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1182
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactEnv.gid
d_gid_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1178 (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactEnv.treasury
d_treasury_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1170 ->
  Integer
d_treasury_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_1180
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.cc
d_cc_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198 (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.constitution
d_constitution_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1200
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.pparams
d_pparams_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.pv
d_pv_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1202 (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.withdrawals
d_withdrawals_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1206
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_EnactStateOf_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1222
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__96 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__96 = erased
-- Ledger.Conway.Foreign.Ratify._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__98 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Ratify._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_100 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_1946
-- Ledger.Conway.Foreign.Ratify._.HasCast-RatifyState
d_HasCast'45'RatifyState_102 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1948
-- Ledger.Conway.Foreign.Ratify._.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_104 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'StakeDistrs_1944
-- Ledger.Conway.Foreign.Ratify._.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
d_HasDReps'45'RatifyEnv_106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasDReps'45'RatifyEnv_1940
-- Ledger.Conway.Foreign.Ratify._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'RatifyState_108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_1938
-- Ledger.Conway.Foreign.Ratify._.HasRatifyState
d_HasRatifyState_110 a0 a1 = ()
-- Ledger.Conway.Foreign.Ratify._.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_114 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'RatifyEnv_114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasTreasury'45'RatifyEnv_1942
-- Ledger.Conway.Foreign.Ratify._.Is-just?
d_Is'45'just'63'_116 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_116 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'just'63'_2440
      v1
-- Ledger.Conway.Foreign.Ratify._.Is-nothing?
d_Is'45'nothing'63'_118 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_118 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_2428
      v1
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv
d_RatifyEnv_126 = ()
-- Ledger.Conway.Foreign.Ratify._.RatifyState
d_RatifyState_130 = ()
-- Ledger.Conway.Foreign.Ratify._.RatifyStateOf
d_RatifyStateOf_134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1922 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902
d_RatifyStateOf_134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1930
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.StakeDistrs
d_StakeDistrs_136 = ()
-- Ledger.Conway.Foreign.Ratify._.acceptConds
d_acceptConds_140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_140 = erased
-- Ledger.Conway.Foreign.Ratify._.accepted
d_accepted_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_142 = erased
-- Ledger.Conway.Foreign.Ratify._.accepted?
d_accepted'63'_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_144
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2524
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.acceptedByCC?
d_acceptedByCC'63'_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_146
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.acceptedByDRep?
d_acceptedByDRep'63'_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.acceptedBySPO?
d_acceptedBySPO'63'_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2516
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.canVote
d_canVote_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  ()
d_canVote_152 = erased
-- Ledger.Conway.Foreign.Ratify._.delayed
d_delayed_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  Bool -> ()
d_delayed_154 = erased
-- Ledger.Conway.Foreign.Ratify._.delayed?
d_delayed'63'_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2412
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.delayingAction
d_delayingAction_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
d_delayingAction_158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2302
-- Ledger.Conway.Foreign.Ratify._.expired
d_expired_160 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_expired_160 = erased
-- Ledger.Conway.Foreign.Ratify._.expired?
d_expired'63'_162 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2536
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.expired⁇
d_expired'8263'_164 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_expired'8263'_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'8263'_2542
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.threshold
d_threshold_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_1688
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.verifyPrev
d_verifyPrev_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  ()
d_verifyPrev_168 = erased
-- Ledger.Conway.Foreign.Ratify._.verifyPrev?
d_verifyPrev'63'_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_2374
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.accepted
d_accepted_182 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_182 = erased
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.acceptedStake
d_acceptedStake_184 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStake_2082
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.activeCC
d_activeCC_186 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_186 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeCC_2066
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.actualVotes
d_actualVotes_188 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2074
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.castVotes
d_castVotes_190 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2054
      v3
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_192 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_192 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_getCCHotCredential_2056
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.mT
d_mT_194 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_mT_2078
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v2 v3
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_196 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_sizeActiveCC_196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_sizeActiveCC_2072
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.stakeDistr
d_stakeDistr_198 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2080
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.totalStake
d_totalStake_200 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_totalStake_2084
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.accepted
d_accepted_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_204 = erased
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.acceptedStake
d_acceptedStake_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_206 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2164
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.activeDReps
d_activeDReps_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_208 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeDReps_2152
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.actualVotes
d_actualVotes_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_210 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2160
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.castVotes
d_castVotes_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_212 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2150
      v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_214 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultDRepCredentialVotes_2158
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_216 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_predeterminedDRepVotes_2154
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.t
d_t_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2162
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v1 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.totalStake
d_totalStake_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_220 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2166
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.accepted
d_accepted_224 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_224 = erased
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.acceptedStake
d_acceptedStake_226 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_226 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.actualVotes
d_actualVotes_228 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_228 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.castVotes
d_castVotes_230 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_230 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2208
      v4
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.defaultVote
d_defaultVote_232 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_defaultVote_232 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultVote_2210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.t
d_t_234 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v3 v4
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.totalStake
d_totalStake_236 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_236 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1922 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902
d_RatifyStateOf_240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1930
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_1892
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  Integer
d_currentEpoch_246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1888
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.delegatees
d_delegatees_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_1898
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.dreps
d_dreps_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_1890
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.pools
d_pools_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_1896
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1858
d_stakeDistrs_254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_1886
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.treasury
d_treasury_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  Integer
d_treasury_256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_1894
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyState.delay
d_delay_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  Bool
d_delay_260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1914
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyState.es
d_es_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1910 (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyState.removed
d_removed_264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1912
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1866
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1864
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__274 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__276 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_278 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_278
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_1946
-- Ledger.Conway.Foreign.Ratify.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_280 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_280
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1948
-- Ledger.Conway.Foreign.Ratify.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_282 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'StakeDistrs_1944
-- Ledger.Conway.Foreign.Ratify.Ratify.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1464
d_HasDReps'45'RatifyEnv_284
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasDReps'45'RatifyEnv_1940
-- Ledger.Conway.Foreign.Ratify.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1214
d_HasEnactState'45'RatifyState_286
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_1938
-- Ledger.Conway.Foreign.Ratify.Ratify.HasRatifyState
d_HasRatifyState_288 a0 a1 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_292 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'RatifyEnv_292
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasTreasury'45'RatifyEnv_1942
-- Ledger.Conway.Foreign.Ratify.Ratify.Is-just?
d_Is'45'just'63'_294 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_294 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'just'63'_2440
      v1
-- Ledger.Conway.Foreign.Ratify.Ratify.Is-nothing?
d_Is'45'nothing'63'_296 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_296 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_2428
      v1
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv
d_RatifyEnv_304 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyState
d_RatifyState_308 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyStateOf
d_RatifyStateOf_312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1922 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902
d_RatifyStateOf_312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1930
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.StakeDistrs
d_StakeDistrs_314 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptConds
d_acceptConds_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_318 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.accepted
d_accepted_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_320 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.accepted?
d_accepted'63'_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_322
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2524
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedByCC
d_acceptedByCC_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_acceptedByCC_324 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedByCC?
d_acceptedByCC'63'_326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_326
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedByDRep
d_acceptedByDRep_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_acceptedByDRep_328 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedByDRep?
d_acceptedByDRep'63'_330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_330
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedBySPO
d_acceptedBySPO_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_acceptedBySPO_332 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedBySPO?
d_acceptedBySPO'63'_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_334
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2516
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.canVote
d_canVote_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  ()
d_canVote_336 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.delayed
d_delayed_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  Bool -> ()
d_delayed_338 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.delayed?
d_delayed'63'_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_340
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2412
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.delayingAction
d_delayingAction_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  Bool
d_delayingAction_342
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2302
-- Ledger.Conway.Foreign.Ratify.Ratify.expired
d_expired_344 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_expired_344 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.expired?
d_expired'63'_346 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2536
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.expired⁇
d_expired'8263'_348 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_expired'8263'_348
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'8263'_2542
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.threshold
d_threshold_350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_846 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_350
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_1688
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.verifyPrev
d_verifyPrev_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  ()
d_verifyPrev_352 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.verifyPrev?
d_verifyPrev'63'_354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_354
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_2374
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.accepted
d_accepted_366 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_366 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.acceptedStake
d_acceptedStake_368 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStake_2082
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.activeCC
d_activeCC_370 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_370 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeCC_2066
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.actualVotes
d_actualVotes_372 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_372
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2074
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.castVotes
d_castVotes_374 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_374 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2054
      v3
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_376 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_376 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_getCCHotCredential_2056
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.mT
d_mT_378 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_mT_2078
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v2 v3
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_380 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_sizeActiveCC_380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_sizeActiveCC_2072
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.stakeDistr
d_stakeDistr_382 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2080
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.totalStake
d_totalStake_384 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_384
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_totalStake_2084
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.accepted
d_accepted_388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_388 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.acceptedStake
d_acceptedStake_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_390 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2164
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.activeDReps
d_activeDReps_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_392 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeDReps_2152
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.actualVotes
d_actualVotes_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_394 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2160
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.castVotes
d_castVotes_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_396 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2150
      v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_398 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultDRepCredentialVotes_2158
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_400 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_predeterminedDRepVotes_2154
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.t
d_t_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_402 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2162
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v1 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.totalStake
d_totalStake_404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_404 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2166
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.accepted
d_accepted_408 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  ()
d_accepted_408 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.acceptedStake
d_acceptedStake_410 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_acceptedStake_410 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.actualVotes
d_actualVotes_412 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_412 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.castVotes
d_castVotes_414 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_414 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2208
      v4
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.defaultVote
d_defaultVote_416 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_994
d_defaultVote_416 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultVote_2210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.t
d_t_418 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_418 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v3 v4
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.totalStake
d_totalStake_420 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1134 ->
  Integer
d_totalStake_420 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1922 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902
d_RatifyStateOf_424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1930
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_1892
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  Integer
d_currentEpoch_430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1888
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.delegatees
d_delegatees_432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_1898
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.dreps
d_dreps_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_1890
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.pools
d_pools_436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_1896
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1858
d_stakeDistrs_438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_1886
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.treasury
d_treasury_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  Integer
d_treasury_440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_1894
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyState.delay
d_delay_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  Bool
d_delay_444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1914
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyState.es
d_es_446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_es_446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1910 (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyState.removed
d_removed_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1912
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1866
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1864
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.Computational-RATIFIES
d_Computational'45'RATIFIES_458 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_306
d_Computational'45'RATIFIES_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFIES_2600
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Conway.Foreign.Ratify._.Computational-RATIFY
d_Computational'45'RATIFY_460 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_306
d_Computational'45'RATIFY_460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFY_2598
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-complete
d_RATIFIES'45'complete_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_462 = erased
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-complete'
d_RATIFIES'45'complete''_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_464 = erased
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-deterministic
d_RATIFIES'45'deterministic_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_466 = erased
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_468 = erased
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-total
d_RATIFIES'45'total_470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total_2610
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-total'
d_RATIFIES'45'total''_472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_472
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total''_2630
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Conway.Foreign.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_474 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'StakeDistrs_474 = erased
-- Ledger.Conway.Foreign.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_476 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'StakeDistrs_476
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868 v1 v2
                -> coe
                     C_StakeDistrs_935
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
              C_StakeDistrs_935 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v3
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                         coe
                           (let v4
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                      (coe v3) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
                                    (coe v4)))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_24
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                (coe
                                   (\ v4 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v3))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                              (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_24
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
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                              (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_478 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'RatifyEnv_478 = erased
-- Ledger.Conway.Foreign.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_480 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'RatifyEnv_480
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1900 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkRatifyEnv_2393
                     (coe
                        C_StakeDistrs_935
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1864
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1866
                                    (coe v1))))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe
                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_2393 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1900
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868 v9 v10
                                     -> coe
                                          C_StakeDistrs_935
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
                                   C_StakeDistrs_935 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v11
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                              coe
                                                (let v12
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                           (coe v11) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
                                                         (coe v12)))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
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
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_24
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
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                                   (coe v10))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v8
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                         coe
                           (let v9
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                      (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                          (coe v9))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                       (coe v9))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_24
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                (coe
                                   (\ v9 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v8
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                         coe
                           (let v9
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                      (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                          (coe v9))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                       (coe v9))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_24
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                (coe
                                   (\ v9 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                              (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_24
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
                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                              (coe v6))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v8
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                         coe
                           (let v9
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                      (coe v8) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                          (coe v9))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                       (coe v9))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_24
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v8 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                (coe
                                   (\ v9 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                              (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_482 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'RatifyState_482 = erased
-- Ledger.Conway.Foreign.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_484 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'RatifyState_484
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1916 v1 v2 v3
                -> coe
                     C_MkRatifyState_12465
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                        (coe v4) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                            (coe v5))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                         (coe v5))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1198
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1200
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1202
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1204
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                           (coe
                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1206
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_74
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_12465 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1916
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1208 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                                            (let v10
                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                             coe
                                                               (let v11
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                                          (coe v10) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                                              (coe v11))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                                           (coe v11))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
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
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1208
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                                         (let v10
                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                          coe
                                                            (let v11
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                                       (coe v10) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                                        (coe v11))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
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
                                                   MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
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
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v10
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                              coe
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                           (coe v10) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1376
                                                            (coe v11)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                               (coe v11))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                            (coe v11))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230))
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
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_72 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_2391 ->
  T_RatifyState_12463 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_116
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_12463
ratifyStep = coe d_ratify'45'step_486
d_ratify'45'step_486 ::
  T_RatifyEnv_2391 ->
  T_RatifyState_12463 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_116
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_12463
d_ratify'45'step_486 v0
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe d_Conv'45'RatifyState_484)
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
                     MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_140
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45''8869'_18)
               (coe d_Conv'45'RatifyState_484))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_348
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFIES_2600
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            d_Conv'45'RatifyEnv_480 v0))
-- Ledger.Conway.Foreign.Ratify.Show-RATIFIES
d_Show'45'RATIFIES_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1870 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1902 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RATIFIES_496 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RATIFIES_496
du_Show'45'RATIFIES_496 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RATIFIES_496
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe (\ v0 -> "" :: Data.Text.Text))
-- Ledger.Conway.Foreign.Ratify.acceptedByCC
acceptedByCC ::
  T_RatifyEnv_2391 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043 ->
  Bool
acceptedByCC = coe d_acceptedByCC_506
d_acceptedByCC_506 ::
  T_RatifyEnv_2391 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043 ->
  Bool
d_acceptedByCC_506 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2454
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            (coe
               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1900 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2393
                              (coe
                                 C_StakeDistrs_935
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1864
                                             (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1866
                                             (coe v4))))))
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2393 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1900
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868 v12 v13
                                              -> coe
                                                   C_StakeDistrs_935
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            C_StakeDistrs_935 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (let v14
                                                             = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                       coe
                                                         (let v15
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                                    (coe v14) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
                                                                  (coe v15)))))
                                                      (coe
                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                         () erased () erased
                                                         (\ v14 ->
                                                            coe
                                                              MAlonzo.Code.Data.Product.Base.du_map_128
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                                              (coe
                                                                 (\ v15 ->
                                                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                 () erased () erased
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                 v14))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                         () erased () erased
                                                         (\ v14 ->
                                                            coe
                                                              MAlonzo.Code.Data.Product.Base.du_map_128
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                              (coe
                                                                 (\ v15 ->
                                                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                 () erased () erased
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                 v14))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v6))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
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
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v9))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v0)
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            (coe
               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1208 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v4)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
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
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v5)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
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
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1208
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v4))
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
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
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
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v6))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v9
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v10
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v9) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1376
                                                (coe v10)))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v10))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v10))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230))
                                         (coe
                                            (\ v10 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v9))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_mkGovActionState''_852
            (coe
               MAlonzo.Code.Class.Convertible.Core.d_from_22
               MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState''_890
               v2)))
-- Ledger.Conway.Foreign.Ratify.acceptedByDRep
acceptedByDRep ::
  T_RatifyEnv_2391 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043 ->
  Bool
acceptedByDRep = coe d_acceptedByDRep_514
d_acceptedByDRep_514 ::
  T_RatifyEnv_2391 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043 ->
  Bool
d_acceptedByDRep_514 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2508
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            (coe
               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1900 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2393
                              (coe
                                 C_StakeDistrs_935
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1864
                                             (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1866
                                             (coe v4))))))
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2393 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1900
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868 v12 v13
                                              -> coe
                                                   C_StakeDistrs_935
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            C_StakeDistrs_935 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (let v14
                                                             = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                       coe
                                                         (let v15
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                                    (coe v14) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
                                                                  (coe v15)))))
                                                      (coe
                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                         () erased () erased
                                                         (\ v14 ->
                                                            coe
                                                              MAlonzo.Code.Data.Product.Base.du_map_128
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                                              (coe
                                                                 (\ v15 ->
                                                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                 () erased () erased
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                 v14))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                         () erased () erased
                                                         (\ v14 ->
                                                            coe
                                                              MAlonzo.Code.Data.Product.Base.du_map_128
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                              (coe
                                                                 (\ v15 ->
                                                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                 () erased () erased
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                 v14))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v6))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
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
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v9))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v0)
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            (coe
               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1208 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v4)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
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
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v5)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
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
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1208
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v4))
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
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
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
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v6))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v9
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v10
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v9) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1376
                                                (coe v10)))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v10))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v10))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230))
                                         (coe
                                            (\ v10 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v9))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_mkGovActionState''_852
            (coe
               MAlonzo.Code.Class.Convertible.Core.d_from_22
               MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState''_890
               v2)))
-- Ledger.Conway.Foreign.Ratify.acceptedBySPO
acceptedBySPO ::
  T_RatifyEnv_2391 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043 ->
  Bool
acceptedBySPO = coe d_acceptedBySPO_522
d_acceptedBySPO_522 ::
  T_RatifyEnv_2391 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043 ->
  Bool
d_acceptedBySPO_522 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2516
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            (coe
               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1900 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2393
                              (coe
                                 C_StakeDistrs_935
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1864
                                             (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1866
                                             (coe v4))))))
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2393 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1900
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868 v12 v13
                                              -> coe
                                                   C_StakeDistrs_935
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
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
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            C_StakeDistrs_935 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1868
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (let v14
                                                             = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                       coe
                                                         (let v15
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                                    (coe v14) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1236
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2674
                                                                  (coe v15)))))
                                                      (coe
                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                         () erased () erased
                                                         (\ v14 ->
                                                            coe
                                                              MAlonzo.Code.Data.Product.Base.du_map_128
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                                              (coe
                                                                 (\ v15 ->
                                                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                 () erased () erased
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                 v14))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                                         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                         () erased () erased
                                                         (\ v14 ->
                                                            coe
                                                              MAlonzo.Code.Data.Product.Base.du_map_128
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                              (coe
                                                                 (\ v15 ->
                                                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                 () erased () erased
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                 v14))
                                                         (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v6))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
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
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v9))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v11
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v12
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v11) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v12))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v12))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v11 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218))
                                         (coe
                                            (\ v12 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v11))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v0)
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            (coe
               MAlonzo.Code.Class.Convertible.Core.C_constructor_24
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1208 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v4)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
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
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v5)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
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
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_62
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1208
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_108
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_218)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_34))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v4))
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
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
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
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v6))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_612
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (let v9
                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                  coe
                                    (let v10
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                                               (coe v9) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_340
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1376
                                                (coe v10)))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                   (coe v10))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1418
                                                (coe v10))))))
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.du_fmap_24
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 ()
                                    erased () erased
                                    (\ v9 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_128
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.d_from_22
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_230))
                                         (coe
                                            (\ v10 ->
                                               MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                 (coe
                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v9))
                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_60
                                       (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Class.Convertible.Core.d_from_22
            MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_mkGovActionState''_852
            (coe
               MAlonzo.Code.Class.Convertible.Core.d_from_22
               MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState''_890
               v2)))
-- Ledger.Conway.Foreign.Ratify.StakeDistrs
d_StakeDistrs_933 = ()
type T_StakeDistrs_933 = StakeDistrs
pattern C_StakeDistrs_935 a0 a1 = StakeDistrs a0 a1
check_StakeDistrs_935 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_52
    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.T_VDeleg_731 Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_52
    Integer Integer ->
  T_StakeDistrs_933
check_StakeDistrs_935 = StakeDistrs
cover_StakeDistrs_933 :: StakeDistrs -> ()
cover_StakeDistrs_933 x
  = case x of
      StakeDistrs _ _ -> ()
-- Ledger.Conway.Foreign.Ratify.RatifyEnv
d_RatifyEnv_2391 = ()
type T_RatifyEnv_2391 = RatifyEnv
pattern C_MkRatifyEnv_2393 a0 a1 a2 a3 a4 a5 a6 = MkRatifyEnv a0 a1 a2 a3 a4 a5 a6
check_MkRatifyEnv_2393 ::
  T_StakeDistrs_933 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_52
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_52
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       () MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615) ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_52
    Integer
    MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_StakePoolParams_83 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_52
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.T_VDeleg_731 ->
  T_RatifyEnv_2391
check_MkRatifyEnv_2393 = MkRatifyEnv
cover_RatifyEnv_2391 :: RatifyEnv -> ()
cover_RatifyEnv_2391 x
  = case x of
      MkRatifyEnv _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.Ratify.RatifyState
d_RatifyState_12463 = ()
type T_RatifyState_12463 = RatifyState
pattern C_MkRatifyState_12465 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_12465 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_66
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12043) ->
  Bool -> T_RatifyState_12463
check_MkRatifyState_12465 = MkRatifyState
cover_RatifyState_12463 :: RatifyState -> ()
cover_RatifyState_12463 x
  = case x of
      MkRatifyState _ _ _ -> ()
