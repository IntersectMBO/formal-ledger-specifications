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
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Show.Core
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
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_EnactStateOf_34 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1202
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_36 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_36
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1216
-- Ledger.Conway.Foreign.Ratify._.HasEnactState
d_HasEnactState_38 a0 a1 = ()
-- Ledger.Conway.Foreign.Ratify._.HasPParams-EnactState
d_HasPParams'45'EnactState_42 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EnactState_42
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1210
-- Ledger.Conway.Foreign.Ratify._.HasWithdrawals-EnactState
d_HasWithdrawals'45'EnactState_44 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'EnactState_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasWithdrawals'45'EnactState_1214
-- Ledger.Conway.Foreign.Ratify._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456
d_HasccMaxTermLength'45'EnactState_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1212
-- Ledger.Conway.Foreign.Ratify._.ccCreds
d_ccCreds_48 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1218
-- Ledger.Conway.Foreign.Ratify._.getHash
d_getHash_50 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1224
-- Ledger.Conway.Foreign.Ratify._.getHashES
d_getHashES_52 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1236
-- Ledger.Conway.Foreign.Ratify._.EnactEnv.epoch
d_epoch_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1150 ->
  Integer
d_epoch_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1162
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactEnv.gid
d_gid_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1150 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1158 (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactEnv.treasury
d_treasury_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1150 ->
  Integer
d_treasury_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_1160
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.cc
d_cc_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1178 (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.constitution
d_constitution_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1180
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.pparams
d_pparams_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1184
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.pv
d_pv_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1182 (coe v0)
-- Ledger.Conway.Foreign.Ratify._.EnactState.withdrawals
d_withdrawals_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1186
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_EnactStateOf_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1202
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__96 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__96 = erased
-- Ledger.Conway.Foreign.Ratify._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__98 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Ratify._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_100 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_1934
-- Ledger.Conway.Foreign.Ratify._.HasCast-RatifyState
d_HasCast'45'RatifyState_102 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1936
-- Ledger.Conway.Foreign.Ratify._.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_104 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'StakeDistrs_1932
-- Ledger.Conway.Foreign.Ratify._.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
d_HasDReps'45'RatifyEnv_106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasDReps'45'RatifyEnv_1928
-- Ledger.Conway.Foreign.Ratify._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194
d_HasEnactState'45'RatifyState_108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_1926
-- Ledger.Conway.Foreign.Ratify._.HasRatifyState
d_HasRatifyState_110 a0 a1 = ()
-- Ledger.Conway.Foreign.Ratify._.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_114 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasTreasury'45'RatifyEnv_1930
-- Ledger.Conway.Foreign.Ratify._.Is-just?
d_Is'45'just'63'_116 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_116 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'just'63'_2428
      v1
-- Ledger.Conway.Foreign.Ratify._.Is-nothing?
d_Is'45'nothing'63'_118 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_118 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_2416
      v1
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv
d_RatifyEnv_126 = ()
-- Ledger.Conway.Foreign.Ratify._.RatifyState
d_RatifyState_130 = ()
-- Ledger.Conway.Foreign.Ratify._.RatifyStateOf
d_RatifyStateOf_134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890
d_RatifyStateOf_134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1918
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.StakeDistrs
d_StakeDistrs_136 = ()
-- Ledger.Conway.Foreign.Ratify._.acceptConds
d_acceptConds_140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_140 = erased
-- Ledger.Conway.Foreign.Ratify._.accepted
d_accepted_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_accepted_142 = erased
-- Ledger.Conway.Foreign.Ratify._.accepted?
d_accepted'63'_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_144
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2512
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.acceptedByCC?
d_acceptedByCC'63'_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_146
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2442
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.acceptedByDRep?
d_acceptedByDRep'63'_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.acceptedBySPO?
d_acceptedBySPO'63'_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.canVote
d_canVote_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_canVote_152 = erased
-- Ledger.Conway.Foreign.Ratify._.delayed
d_delayed_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  Bool -> ()
d_delayed_154 = erased
-- Ledger.Conway.Foreign.Ratify._.delayed?
d_delayed'63'_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2400
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.delayingAction
d_delayingAction_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  Bool
d_delayingAction_158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2290
-- Ledger.Conway.Foreign.Ratify._.expired
d_expired_160 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_expired_160 = erased
-- Ledger.Conway.Foreign.Ratify._.expired?
d_expired'63'_162 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2524
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.threshold
d_threshold_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_1676
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.verifyPrev
d_verifyPrev_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  ()
d_verifyPrev_166 = erased
-- Ledger.Conway.Foreign.Ratify._.verifyPrev?
d_verifyPrev'63'_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_2362
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.accepted
d_accepted_180 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_accepted_180 = erased
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.acceptedStake
d_acceptedStake_182 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_acceptedStake_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStake_2070
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.activeCC
d_activeCC_184 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_184 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeCC_2054
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.actualVotes
d_actualVotes_186 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_186
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2062
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.castVotes
d_castVotes_188 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_188 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2042
      v3
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_190 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_190 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_getCCHotCredential_2044
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.mT
d_mT_192 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_192 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_mT_2066
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v2 v3
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_194 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_sizeActiveCC_194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_sizeActiveCC_2060
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.stakeDistr
d_stakeDistr_196 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2068
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByCC.totalStake
d_totalStake_198 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_totalStake_198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_totalStake_2072
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.accepted
d_accepted_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_accepted_202 = erased
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.acceptedStake
d_acceptedStake_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_acceptedStake_204 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2152
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.activeDReps
d_activeDReps_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_206 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeDReps_2140
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.actualVotes
d_actualVotes_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_208 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2148
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.castVotes
d_castVotes_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_210 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2138
      v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_212 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultDRepCredentialVotes_2146
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_214 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_predeterminedDRepVotes_2142
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.t
d_t_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_216 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2150
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v1 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedByDRep.totalStake
d_totalStake_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_totalStake_218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2154
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.accepted
d_accepted_222 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_accepted_222 = erased
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.acceptedStake
d_acceptedStake_224 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_acceptedStake_224 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.actualVotes
d_actualVotes_226 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_226 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2208
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.castVotes
d_castVotes_228 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_228 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2196
      v4
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.defaultVote
d_defaultVote_230 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_defaultVote_230 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultVote_2198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.t
d_t_232 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_232 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v3 v4
-- Ledger.Conway.Foreign.Ratify._.AcceptedBySPO.totalStake
d_totalStake_234 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_totalStake_234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890
d_RatifyStateOf_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1918
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_1880
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  Integer
d_currentEpoch_244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1876
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.delegatees
d_delegatees_246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_1886
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.dreps
d_dreps_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_1878
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.pools
d_pools_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_1884
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1846
d_stakeDistrs_252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_1874
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyEnv.treasury
d_treasury_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  Integer
d_treasury_254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_1882
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyState.delay
d_delay_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  Bool
d_delay_258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1902
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyState.es
d_es_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_es_260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1898 (coe v0)
-- Ledger.Conway.Foreign.Ratify._.RatifyState.removed
d_removed_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1900
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1854
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1852
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__272 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__274 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_276 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_276
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_1934
-- Ledger.Conway.Foreign.Ratify.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_278 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_278
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1936
-- Ledger.Conway.Foreign.Ratify.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_280 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_280
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'StakeDistrs_1932
-- Ledger.Conway.Foreign.Ratify.Ratify.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
d_HasDReps'45'RatifyEnv_282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasDReps'45'RatifyEnv_1928
-- Ledger.Conway.Foreign.Ratify.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1194
d_HasEnactState'45'RatifyState_284
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_1926
-- Ledger.Conway.Foreign.Ratify.Ratify.HasRatifyState
d_HasRatifyState_286 a0 a1 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_290 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_290
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasTreasury'45'RatifyEnv_1930
-- Ledger.Conway.Foreign.Ratify.Ratify.Is-just?
d_Is'45'just'63'_292 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_292 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'just'63'_2428
      v1
-- Ledger.Conway.Foreign.Ratify.Ratify.Is-nothing?
d_Is'45'nothing'63'_294 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_294 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_2416
      v1
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv
d_RatifyEnv_302 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyState
d_RatifyState_306 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyStateOf
d_RatifyStateOf_310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890
d_RatifyStateOf_310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1918
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.StakeDistrs
d_StakeDistrs_312 = ()
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptConds
d_acceptConds_316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_316 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.accepted
d_accepted_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_accepted_318 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.accepted?
d_accepted'63'_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_320
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2512
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedByCC
d_acceptedByCC_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_acceptedByCC_322 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedByCC?
d_acceptedByCC'63'_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_324
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2442
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedByDRep
d_acceptedByDRep_326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_acceptedByDRep_326 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedByDRep?
d_acceptedByDRep'63'_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_328
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedBySPO
d_acceptedBySPO_330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_acceptedBySPO_330 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.acceptedBySPO?
d_acceptedBySPO'63'_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_332
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.canVote
d_canVote_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_canVote_334 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.delayed
d_delayed_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  Bool -> ()
d_delayed_336 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.delayed?
d_delayed'63'_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_338
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2400
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.delayingAction
d_delayingAction_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  Bool
d_delayingAction_340
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2290
-- Ledger.Conway.Foreign.Ratify.Ratify.expired
d_expired_342 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_expired_342 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.expired?
d_expired'63'_344 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_344
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2524
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.threshold
d_threshold_346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_1676
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.verifyPrev
d_verifyPrev_348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  ()
d_verifyPrev_348 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.verifyPrev?
d_verifyPrev'63'_350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_350
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_2362
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.accepted
d_accepted_362 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_accepted_362 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.acceptedStake
d_acceptedStake_364 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_acceptedStake_364
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStake_2070
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.activeCC
d_activeCC_366 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_366 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeCC_2054
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.actualVotes
d_actualVotes_368 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2062
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.castVotes
d_castVotes_370 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_370 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2042
      v3
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_372 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_372 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_getCCHotCredential_2044
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.mT
d_mT_374 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_374 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_mT_2066
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v2 v3
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_376 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_sizeActiveCC_376 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_sizeActiveCC_2060
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.stakeDistr
d_stakeDistr_378 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2068
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByCC.totalStake
d_totalStake_380 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_totalStake_380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_totalStake_2072
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.accepted
d_accepted_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_accepted_384 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.acceptedStake
d_acceptedStake_386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_acceptedStake_386 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2152
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.activeDReps
d_activeDReps_388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_388 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeDReps_2140
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.actualVotes
d_actualVotes_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_390 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2148
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.castVotes
d_castVotes_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_392 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2138
      v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_394 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultDRepCredentialVotes_2146
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_396 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_predeterminedDRepVotes_2142
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.t
d_t_398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_398 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2150
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v1 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedByDRep.totalStake
d_totalStake_400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_totalStake_400 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2154
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v2
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.accepted
d_accepted_404 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  ()
d_accepted_404 = erased
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.acceptedStake
d_acceptedStake_406 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_acceptedStake_406 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.actualVotes
d_actualVotes_408 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_408 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2208
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.castVotes
d_castVotes_410 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_410 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2196
      v4
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.defaultVote
d_defaultVote_412 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_defaultVote_412 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultVote_2198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.t
d_t_414 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_414 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v3 v4
-- Ledger.Conway.Foreign.Ratify.Ratify.AcceptedBySPO.totalStake
d_totalStake_416 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_totalStake_416 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.Ratify.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890
d_RatifyStateOf_420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1918
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_1880
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  Integer
d_currentEpoch_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1876
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.delegatees
d_delegatees_428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_1886
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.dreps
d_dreps_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_1878
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.pools
d_pools_432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_1884
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1846
d_stakeDistrs_434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_1874
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyEnv.treasury
d_treasury_436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  Integer
d_treasury_436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_1882
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyState.delay
d_delay_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  Bool
d_delay_440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1902
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyState.es
d_es_442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_es_442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1898 (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.RatifyState.removed
d_removed_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1900
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1854
      (coe v0)
-- Ledger.Conway.Foreign.Ratify.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1852
      (coe v0)
-- Ledger.Conway.Foreign.Ratify._.Computational-RATIFIES
d_Computational'45'RATIFIES_454 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFIES_2566
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Ratify._.Computational-RATIFY
d_Computational'45'RATIFY_456 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFY_2564
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-complete
d_RATIFIES'45'complete_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_458 = erased
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-complete'
d_RATIFIES'45'complete''_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_460 = erased
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-deterministic
d_RATIFIES'45'deterministic_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_462 = erased
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_464 = erased
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-total
d_RATIFIES'45'total_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total_2576
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Ratify._.RATIFIES-total'
d_RATIFIES'45'total''_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total''_2596
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_470 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_470 = erased
-- Ledger.Conway.Foreign.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_472 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_472
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856 v1 v2
                -> coe
                     C_StakeDistrs_911
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_StakeDistrs_911 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v3
                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                            coe
                              (let v4
                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v3) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                                       (coe v4)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v2)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_474 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_474 = erased
-- Ledger.Conway.Foreign.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_476 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_476
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkRatifyEnv_2409
                     (coe
                        C_StakeDistrs_911
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1852
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1854
                                    (coe v1))))))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_2409 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856 v9 v10
                                     -> coe
                                          C_StakeDistrs_911
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                   C_StakeDistrs_911 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v12
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v11) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                                                            (coe v12)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v9)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v10)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v8
                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v8
                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                              (coe
                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v4)))
                     (coe v5)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v6)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v8
                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                            coe
                              (let v9
                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v7)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_478 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_478 = erased
-- Ledger.Conway.Foreign.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_480 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_480
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1904 v1 v2 v3
                -> coe
                     C_MkRatifyState_12499
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                        (coe v4) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                            (coe v5))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                         (coe v5))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1178
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
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1180
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
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1182
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1184
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1186
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_68
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_12499 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1904
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188 v5 v6 v7 v8 v9
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
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                            (let v10
                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                             coe
                                                               (let v11
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                          (coe v10) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                              (coe v11))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                           (coe v11))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                         (let v10
                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                          coe
                                                            (let v11
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                       (coe v10) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                        (coe v11))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                                                               (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_456
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
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
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_2407 ->
  T_RatifyState_12497 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_12497
ratifyStep = coe d_ratify'45'step_482
d_ratify'45'step_482 ::
  T_RatifyEnv_2407 ->
  T_RatifyState_12497 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_12497
d_ratify'45'step_482 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'RatifyState_480)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                     (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                     (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45''8869'_18)
               (coe d_Conv'45'RatifyState_480))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFIES_2566
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_476
            v0))
-- Ledger.Conway.Foreign.Ratify.Show-RATIFIES
d_Show'45'RATIFIES_492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1890 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RATIFIES_492 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RATIFIES_492
du_Show'45'RATIFIES_492 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RATIFIES_492
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe (\ v0 -> "" :: Data.Text.Text))
-- Ledger.Conway.Foreign.Ratify.acceptedByCC
acceptedByCC ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117 ->
  Bool
acceptedByCC = coe d_acceptedByCC_502
d_acceptedByCC_502 ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117 ->
  Bool
d_acceptedByCC_502 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2442
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2409
                              (coe
                                 C_StakeDistrs_911
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1852
                                             (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1854
                                             (coe v4))))))
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2409 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856 v12 v13
                                              -> coe
                                                   C_StakeDistrs_911
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                            C_StakeDistrs_911 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (let v14
                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                          coe
                                                            (let v15
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                       (coe v14) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                                                                     (coe v15)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                         (coe v12)))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                         (coe v13)))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v7)))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v9)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v10)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v0)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v9
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v10
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v9) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                                                   (coe v10)))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v10))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v10))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v8)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_mkGovActionState''_862
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState''_900
               v2)))
-- Ledger.Conway.Foreign.Ratify.acceptedByDRep
acceptedByDRep ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117 ->
  Bool
acceptedByDRep = coe d_acceptedByDRep_510
d_acceptedByDRep_510 ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117 ->
  Bool
d_acceptedByDRep_510 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2496
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2409
                              (coe
                                 C_StakeDistrs_911
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1852
                                             (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1854
                                             (coe v4))))))
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2409 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856 v12 v13
                                              -> coe
                                                   C_StakeDistrs_911
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                            C_StakeDistrs_911 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (let v14
                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                          coe
                                                            (let v15
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                       (coe v14) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                                                                     (coe v15)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                         (coe v12)))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                         (coe v13)))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v7)))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v9)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v10)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v0)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v9
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v10
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v9) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                                                   (coe v10)))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v10))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v10))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v8)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_mkGovActionState''_862
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState''_900
               v2)))
-- Ledger.Conway.Foreign.Ratify.acceptedBySPO
acceptedBySPO ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117 ->
  Bool
acceptedBySPO = coe d_acceptedBySPO_518
d_acceptedBySPO_518 ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117 ->
  Bool
d_acceptedBySPO_518 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2504
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2409
                              (coe
                                 C_StakeDistrs_911
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1852
                                             (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1854
                                             (coe v4))))))
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2409 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856 v12 v13
                                              -> coe
                                                   C_StakeDistrs_911
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v12))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                            C_StakeDistrs_911 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1856
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (let v14
                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                          coe
                                                            (let v15
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                       (coe v14) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                                                                     (coe v15)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                         (coe v12)))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                         (coe v13)))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v7)))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v9)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v10)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v0)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1188
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
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
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v9
                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                     coe
                                       (let v10
                                              = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                  (coe v9) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                                                   (coe v10)))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                      (coe v10))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                   (coe v10))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_224)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                    (coe v8)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_mkGovActionState''_862
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState''_900
               v2)))
-- Ledger.Conway.Foreign.Ratify.StakeDistrs
d_StakeDistrs_909 = ()
type T_StakeDistrs_909 = StakeDistrs
pattern C_StakeDistrs_911 a0 a1 = StakeDistrs a0 a1
check_StakeDistrs_911 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.T_VDeleg_743 Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer Integer ->
  T_StakeDistrs_909
check_StakeDistrs_911 = StakeDistrs
cover_StakeDistrs_909 :: StakeDistrs -> ()
cover_StakeDistrs_909 x
  = case x of
      StakeDistrs _ _ -> ()
-- Ledger.Conway.Foreign.Ratify.RatifyEnv
d_RatifyEnv_2407 = ()
type T_RatifyEnv_2407 = RatifyEnv
pattern C_MkRatifyEnv_2409 a0 a1 a2 a3 a4 a5 a6 = MkRatifyEnv a0 a1 a2 a3 a4 a5 a6
check_MkRatifyEnv_2409 ::
  T_StakeDistrs_909 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       () MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591) ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer
    MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_StakePoolParams_81 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591
    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.T_VDeleg_743 ->
  T_RatifyEnv_2407
check_MkRatifyEnv_2409 = MkRatifyEnv
cover_RatifyEnv_2407 :: RatifyEnv -> ()
cover_RatifyEnv_2407 x
  = case x of
      MkRatifyEnv _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.Ratify.RatifyState
d_RatifyState_12497 = ()
type T_RatifyState_12497 = RatifyState
pattern C_MkRatifyState_12499 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_12499 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_60
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.Gov.T_GovActionState_12117) ->
  Bool -> T_RatifyState_12497
check_MkRatifyState_12499 = MkRatifyState
cover_RatifyState_12497 :: RatifyState -> ()
cover_RatifyState_12497 x
  = case x of
      MkRatifyState _ _ _ -> ()
