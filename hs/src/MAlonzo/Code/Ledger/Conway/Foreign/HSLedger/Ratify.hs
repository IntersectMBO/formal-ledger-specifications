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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational
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
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1182 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154
d_EnactStateOf_36 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-EnactEnv
d_HasCast'45'EnactEnv_38 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EnactEnv_38
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasCast'45'EnactEnv_1204
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState
d_HasEnactState_40 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasPParams-EnactState
d_HasPParams'45'EnactState_44 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_432
d_HasPParams'45'EnactState_44
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasPParams'45'EnactState_1198
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasWithdrawals-EnactState
d_HasWithdrawals'45'EnactState_46 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'EnactState_46
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasWithdrawals'45'EnactState_1202
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasccMaxTermLength-EnactState
d_HasccMaxTermLength'45'EnactState_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_452
d_HasccMaxTermLength'45'EnactState_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_HasccMaxTermLength'45'EnactState_1200
-- Ledger.Conway.Foreign.HSLedger.Ratify._.ccCreds
d_ccCreds_50 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ccCreds_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_ccCreds_1206
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHash
d_getHash_52 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHash_1212
-- Ledger.Conway.Foreign.HSLedger.Ratify._.getHashES
d_getHashES_54 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_54
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.du_getHashES_1224
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.epoch
d_epoch_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1138 ->
  Integer
d_epoch_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_epoch_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.gid
d_gid_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_gid_1146 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactEnv.treasury
d_treasury_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactEnv_1138 ->
  Integer
d_treasury_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_treasury_1148
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.cc
d_cc_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1166 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.constitution
d_constitution_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1168
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pparams
d_pparams_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1172
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.pv
d_pv_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1170 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.EnactState.withdrawals
d_withdrawals_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState.EnactStateOf
d_EnactStateOf_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1182 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154
d_EnactStateOf_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_EnactStateOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__98 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__100 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_102 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_1918
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-RatifyState
d_HasCast'45'RatifyState_104 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1920
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_106 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'StakeDistrs_1916
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1278
d_HasDReps'45'RatifyEnv_108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasDReps'45'RatifyEnv_1912
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1182
d_HasEnactState'45'RatifyState_110
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_1910
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState
d_HasRatifyState_112 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_116 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_116
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasTreasury'45'RatifyEnv_1914
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Is-just?
d_Is'45'just'63'_118 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_118 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'just'63'_2412
      v1
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Is-nothing?
d_Is'45'nothing'63'_120 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_120 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_2400
      v1
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_128 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_132 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyStateOf
d_RatifyStateOf_136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1894 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874
d_RatifyStateOf_136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1902
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_138 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptConds
d_acceptConds_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_142 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted
d_accepted_144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_accepted_144 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.accepted?
d_accepted'63'_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_146
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedByCC?
d_acceptedByCC'63'_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2426
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedByDRep?
d_acceptedByDRep'63'_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.acceptedBySPO?
d_acceptedBySPO'63'_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.canVote
d_canVote_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_canVote_154 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed
d_delayed_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  Bool -> ()
d_delayed_156 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayed?
d_delayed'63'_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.delayingAction
d_delayingAction_160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  Bool
d_delayingAction_160
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2274
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired
d_expired_162 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_expired_162 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.expired?
d_expired'63'_164 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.threshold
d_threshold_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_1660
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev
d_verifyPrev_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  ()
d_verifyPrev_168 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.verifyPrev?
d_verifyPrev'63'_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_2346
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.accepted
d_accepted_182 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_accepted_182 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.acceptedStake
d_acceptedStake_184 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_acceptedStake_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStake_2054
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.activeCC
d_activeCC_186 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_186 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeCC_2038
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.actualVotes
d_actualVotes_188 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2046
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.castVotes
d_castVotes_190 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2026
      v3
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_192 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_192 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_getCCHotCredential_2028
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.mT
d_mT_194 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_mT_2050
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v2 v3
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_196 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_sizeActiveCC_196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_sizeActiveCC_2044
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.stakeDistr
d_stakeDistr_198 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2052
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByCC.totalStake
d_totalStake_200 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_totalStake_200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_totalStake_2056
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.accepted
d_accepted_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_accepted_204 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.acceptedStake
d_acceptedStake_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_acceptedStake_206 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2136
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.activeDReps
d_activeDReps_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_208 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeDReps_2124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.actualVotes
d_actualVotes_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_210 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2132
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.castVotes
d_castVotes_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_212 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2122
      v2
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_214 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultDRepCredentialVotes_2130
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_216 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_predeterminedDRepVotes_2126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v2
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.t
d_t_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2134
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedByDRep.totalStake
d_totalStake_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_totalStake_220 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2138
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedBySPO.accepted
d_accepted_224 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_accepted_224 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedBySPO.acceptedStake
d_acceptedStake_226 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_acceptedStake_226 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2196
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedBySPO.actualVotes
d_actualVotes_228 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_228 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2192
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedBySPO.castVotes
d_castVotes_230 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_230 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2180
      v4
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedBySPO.defaultVote
d_defaultVote_232 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_908
d_defaultVote_232 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultVote_2182
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedBySPO.t
d_t_234 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2194
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v3 v4
-- Ledger.Conway.Foreign.HSLedger.Ratify._.AcceptedBySPO.totalStake
d_totalStake_236 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_totalStake_236 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Ratify._.HasRatifyState.RatifyStateOf
d_RatifyStateOf_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1894 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874
d_RatifyStateOf_240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1902
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_1864
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  Integer
d_currentEpoch_246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1860
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.delegatees
d_delegatees_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_1870
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_1862
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.pools
d_pools_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_1868
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1830
d_stakeDistrs_254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_1858
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  Integer
d_treasury_256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_1866
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  Bool
d_delay_260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1886
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154
d_es_262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1882 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1884
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistrPools
d_stakeDistrPools_268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__274 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__276 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_278 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_278
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_1918
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.HasCast-RatifyState
d_HasCast'45'RatifyState_280 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_280
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_1920
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.HasCast-StakeDistrs
d_HasCast'45'StakeDistrs_282 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakeDistrs_282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'StakeDistrs_1916
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.HasDReps-RatifyEnv
d_HasDReps'45'RatifyEnv_284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1278
d_HasDReps'45'RatifyEnv_284
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasDReps'45'RatifyEnv_1912
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.HasEnactState-RatifyState
d_HasEnactState'45'RatifyState_286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1182
d_HasEnactState'45'RatifyState_286
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasEnactState'45'RatifyState_1910
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.HasRatifyState
d_HasRatifyState_288 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.HasTreasury-RatifyEnv
d_HasTreasury'45'RatifyEnv_292 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'RatifyEnv_292
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasTreasury'45'RatifyEnv_1914
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.Is-just?
d_Is'45'just'63'_294 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'just'63'_294 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'just'63'_2412
      v1
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.Is-nothing?
d_Is'45'nothing'63'_296 ::
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Is'45'nothing'63'_296 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_Is'45'nothing'63'_2400
      v1
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyEnv
d_RatifyEnv_304 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyState
d_RatifyState_308 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyStateOf
d_RatifyStateOf_312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1894 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874
d_RatifyStateOf_312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1902
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.StakeDistrs
d_StakeDistrs_314 = ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.acceptConds
d_acceptConds_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_acceptConds_318 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.accepted
d_accepted_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_accepted_320 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.accepted?
d_accepted'63'_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_322
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_accepted'63'_2496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.acceptedByCC
d_acceptedByCC_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_acceptedByCC_324 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.acceptedByCC?
d_acceptedByCC'63'_326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByCC'63'_326
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2426
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.acceptedByDRep
d_acceptedByDRep_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_acceptedByDRep_328 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.acceptedByDRep?
d_acceptedByDRep'63'_330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedByDRep'63'_330
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.acceptedBySPO
d_acceptedBySPO_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_acceptedBySPO_332 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.acceptedBySPO?
d_acceptedBySPO'63'_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBySPO'63'_334
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.canVote
d_canVote_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_canVote_336 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.delayed
d_delayed_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  Bool -> ()
d_delayed_338 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.delayed?
d_delayed'63'_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_340
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delayed'63'_2384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.delayingAction
d_delayingAction_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  Bool
d_delayingAction_342
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_delayingAction_2274
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.expired
d_expired_344 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_expired_344 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.expired?
d_expired'63'_346 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_expired'63'_2508
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.threshold
d_threshold_348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_348
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_threshold_1660
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.verifyPrev
d_verifyPrev_350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  ()
d_verifyPrev_350 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.verifyPrev?
d_verifyPrev'63'_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_verifyPrev'63'_2346
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.accepted
d_accepted_364 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_accepted_364 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.acceptedStake
d_acceptedStake_366 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_acceptedStake_366
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedStake_2054
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.activeCC
d_activeCC_368 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeCC_368 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeCC_2038
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.actualVotes
d_actualVotes_370 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_370
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_actualVotes_2046
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.castVotes
d_castVotes_372 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_372 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2026
      v3
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.getCCHotCredential
d_getCCHotCredential_374 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getCCHotCredential_374 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_getCCHotCredential_2028
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.mT
d_mT_376 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mT_376 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_mT_2050
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v2 v3
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.sizeActiveCC
d_sizeActiveCC_378 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_sizeActiveCC_378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_sizeActiveCC_2044
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.stakeDistr
d_stakeDistr_380 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistr_2052
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByCC.totalStake
d_totalStake_382 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_totalStake_382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_totalStake_2056
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.accepted
d_accepted_386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_accepted_386 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.acceptedStake
d_acceptedStake_388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_acceptedStake_388 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2136
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.activeDReps
d_activeDReps_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_390 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_activeDReps_2124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.actualVotes
d_actualVotes_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_392 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2132
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.castVotes
d_castVotes_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_394 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2122
      v2
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.defaultDRepCredentialVotes
d_defaultDRepCredentialVotes_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_defaultDRepCredentialVotes_396 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultDRepCredentialVotes_2130
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.predeterminedDRepVotes
d_predeterminedDRepVotes_398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_predeterminedDRepVotes_398 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_predeterminedDRepVotes_2126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v2
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.t
d_t_400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_400 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2134
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedByDRep.totalStake
d_totalStake_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_totalStake_402 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2138
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v2
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedBySPO.accepted
d_accepted_406 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  ()
d_accepted_406 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedBySPO.acceptedStake
d_acceptedStake_408 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_acceptedStake_408 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_acceptedStake_2196
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedBySPO.actualVotes
d_actualVotes_410 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_410 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_actualVotes_2192
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedBySPO.castVotes
d_castVotes_412 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_castVotes_412 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_castVotes_2180
      v4
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedBySPO.defaultVote
d_defaultVote_414 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_908
d_defaultVote_414 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_defaultVote_2182
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v4 v5
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedBySPO.t
d_t_416 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_t_416 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_t_2194
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v3 v4
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.AcceptedBySPO.totalStake
d_totalStake_418 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1048 ->
  Integer
d_totalStake_418 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_totalStake_2198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
      v0 v1 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.HasRatifyState.RatifyStateOf
d_RatifyStateOf_422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1894 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874
d_RatifyStateOf_422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_RatifyStateOf_1902
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_1864
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  Integer
d_currentEpoch_428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_1860
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyEnv.delegatees
d_delegatees_430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_1870
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyEnv.dreps
d_dreps_432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_1862
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyEnv.pools
d_pools_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_1868
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1830
d_stakeDistrs_436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_1858
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyEnv.treasury
d_treasury_438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  Integer
d_treasury_438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_1866
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyState.delay
d_delay_442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  Bool
d_delay_442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1886
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyState.es
d_es_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154
d_es_444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1882 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.RatifyState.removed
d_removed_446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1884
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.StakeDistrs.stakeDistrPools
d_stakeDistrPools_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrPools_450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify.Ratify.StakeDistrs.stakeDistrVDeleg
d_stakeDistrVDeleg_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistrVDeleg_452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFIES
d_Computational'45'RATIFIES_456 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFIES_456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFIES_2528
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.Computational-RATIFY
d_Computational'45'RATIFY_458 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFY_2526
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete
d_RATIFIES'45'complete_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete_460 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-complete'
d_RATIFIES'45'complete''_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'complete''_462 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-deterministic
d_RATIFIES'45'deterministic_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic_464 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-deterministic-≡
d_RATIFIES'45'deterministic'45''8801'_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFIES'45'deterministic'45''8801'_466 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total
d_RATIFIES'45'total_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total_468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total_2538
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify._.RATIFIES-total'
d_RATIFIES'45'total''_470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFIES'45'total''_470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total''_2558
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_472 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_472 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_474 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_474
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840 v1 v2
                -> coe
                     C_StakeDistrs_911
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
              C_StakeDistrs_911 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (let v3
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                            coe
                              (let v4
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                         (coe v3) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1152
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
                                       (coe v4)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
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
d_HsTy'45'RatifyEnv_476 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_476 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_478 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_478
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1872 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkRatifyEnv_2409
                     (coe
                        C_StakeDistrs_911
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1836
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1838
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
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
              C_MkRatifyEnv_2409 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1872
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840 v9 v10
                                     -> coe
                                          C_StakeDistrs_911
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
                                   C_StakeDistrs_911 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v12
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                              (coe v11) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1152
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
                                                            (coe v12)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
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
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
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
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
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
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
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
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                         (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                          (coe v9))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                           (coe v7)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_480 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_480 = erased
-- Ledger.Conway.Foreign.HSLedger.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_482 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_482
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888 v1 v2 v3
                -> coe
                     C_MkRatifyState_12419
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                        (coe v4) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                            (coe v5))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1166
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1168
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1170
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1172
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1174
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_12419 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1888
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1176 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                                          (coe v10) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                                              (coe v11))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1176
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
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                                       (coe v10) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                              (coe v10) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1342
                                                               (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_2407 ->
  T_RatifyState_12417 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073) ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_12417
ratifyStep = coe d_ratify'45'step_484
d_ratify'45'step_484 ::
  T_RatifyEnv_2407 ->
  T_RatifyState_12417 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073] ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_RatifyState_12417
d_ratify'45'step_484 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'RatifyState_482)
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
                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_20)
               (coe d_Conv'45'RatifyState_482))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.Computational.d_Computational'45'RATIFIES_2528
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_478
            v0))
-- Ledger.Conway.Foreign.HSLedger.Ratify.Show-RATIFIES
d_Show'45'RATIFIES_494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_1842 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1874 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RATIFIES_494 ~v0 ~v1 ~v2 ~v3 = du_Show'45'RATIFIES_494
du_Show'45'RATIFIES_494 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RATIFIES_494
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe (\ v0 -> "" :: Data.Text.Text))
-- Ledger.Conway.Foreign.HSLedger.Ratify.acceptedByCC
acceptedByCC ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073 ->
  Bool
acceptedByCC = coe d_acceptedByCC_504
d_acceptedByCC_504 ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073 ->
  Bool
d_acceptedByCC_504 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByCC'63'_2426
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1872 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2409
                              (coe
                                 C_StakeDistrs_911
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1836
                                             (coe v4)))))
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1838
                                             (coe v4))))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
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
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
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
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2409 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1872
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840 v12 v13
                                              -> coe
                                                   C_StakeDistrs_911
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
                                                            (coe v12))))
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
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            C_StakeDistrs_911 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (let v14
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                          coe
                                                            (let v15
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                                       (coe v14) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1152
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
                                                                     (coe v15)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                         (coe v12)))
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
                                                         (coe v13)))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v7)))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v9)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
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
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1176 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe v6)))
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
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1176
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
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v6))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v9
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v10
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v9) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1342
                                                   (coe v10)))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v10))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v10))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v8)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_mkGovActionState''_860
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState''_898
               v2)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.acceptedByDRep
acceptedByDRep ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073 ->
  Bool
acceptedByDRep = coe d_acceptedByDRep_512
d_acceptedByDRep_512 ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073 ->
  Bool
d_acceptedByDRep_512 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedByDRep'63'_2480
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1872 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2409
                              (coe
                                 C_StakeDistrs_911
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1836
                                             (coe v4)))))
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1838
                                             (coe v4))))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
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
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
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
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2409 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1872
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840 v12 v13
                                              -> coe
                                                   C_StakeDistrs_911
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
                                                            (coe v12))))
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
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            C_StakeDistrs_911 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (let v14
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                          coe
                                                            (let v15
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                                       (coe v14) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1152
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
                                                                     (coe v15)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                         (coe v12)))
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
                                                         (coe v13)))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v7)))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v9)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
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
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1176 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe v6)))
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
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1176
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
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v6))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v9
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v10
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v9) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1342
                                                   (coe v10)))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v10))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v10))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v8)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_mkGovActionState''_860
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState''_898
               v2)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.acceptedBySPO
acceptedBySPO ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073 ->
  Bool
acceptedBySPO = coe d_acceptedBySPO_520
d_acceptedBySPO_520 ::
  T_RatifyEnv_2407 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073 ->
  Bool
d_acceptedBySPO_520 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_acceptedBySPO'63'_2488
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_constructor_22
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1872 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              C_MkRatifyEnv_2409
                              (coe
                                 C_StakeDistrs_911
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrVDeleg_1836
                                             (coe v4)))))
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrPools_1838
                                             (coe v4))))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
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
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
                              (coe v8)
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))))
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
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       C_MkRatifyEnv_2409 v4 v5 v6 v7 v8 v9 v10
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1872
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840 v12 v13
                                              -> coe
                                                   C_StakeDistrs_911
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
                                                            (coe v12))))
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
                                                            (coe v13))))
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v11 ->
                                          case coe v11 of
                                            C_StakeDistrs_911 v12 v13
                                              -> coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1840
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                         (let v14
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                          coe
                                                            (let v15
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                                       (coe v14) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1152
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2606
                                                                     (coe v15)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                         (coe v12)))
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
                                                         (coe v13)))
                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                 v4)
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v6)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v7)))
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v9)))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v11
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v12
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v11) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v12))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v12))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
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
                       MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1176 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v10
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                              (coe v9) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                                  (coe v10))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                               (coe v10))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (coe
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe v6)))
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
                                       (\ v9 ->
                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                    (coe v7)))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161 v4 v5 v6 v7 v8
                         -> coe
                              MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1176
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
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_284
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v6))
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                 (coe
                                    (\ v9 ->
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v7))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                    (let v9
                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                     coe
                                       (let v10
                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_786
                                                  (coe v9) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_336
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1342
                                                   (coe v10)))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                      (coe v10))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1376
                                                   (coe v10))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                    (coe v8)))
                       _ -> MAlonzo.RTE.mazUnreachableError)))
            v1)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_mkGovActionState''_860
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState''_898
               v2)))
-- Ledger.Conway.Foreign.HSLedger.Ratify.StakeDistrs
d_StakeDistrs_909 = ()
type T_StakeDistrs_909 = StakeDistrs
pattern C_StakeDistrs_911 a0 a1 = StakeDistrs a0 a1
check_StakeDistrs_911 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.T_VDeleg_743
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_16
    Integer Integer ->
  T_StakeDistrs_909
check_StakeDistrs_911 = StakeDistrs
cover_StakeDistrs_909 :: StakeDistrs -> ()
cover_StakeDistrs_909 x
  = case x of
      StakeDistrs _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyEnv
d_RatifyEnv_2407 = ()
type T_RatifyEnv_2407 = RatifyEnv
pattern C_MkRatifyEnv_2409 a0 a1 a2 a3 a4 a5 a6 = MkRatifyEnv a0 a1 a2 a3 a4 a5 a6
check_MkRatifyEnv_2409 ::
  T_StakeDistrs_909 ->
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
  T_RatifyEnv_2407
check_MkRatifyEnv_2409 = MkRatifyEnv
cover_RatifyEnv_2407 :: RatifyEnv -> ()
cover_RatifyEnv_2407 x
  = case x of
      MkRatifyEnv _ _ _ _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Ratify.RatifyState
d_RatifyState_12417 = ()
type T_RatifyState_12417 = RatifyState
pattern C_MkRatifyState_12419 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_12419 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.T_GovActionState_12073) ->
  Bool -> T_RatifyState_12417
check_MkRatifyState_12419 = MkRatifyState
cover_RatifyState_12417 :: RatifyState -> ()
cover_RatifyState_12417 x
  = case x of
      MkRatifyState _ _ _ -> ()
