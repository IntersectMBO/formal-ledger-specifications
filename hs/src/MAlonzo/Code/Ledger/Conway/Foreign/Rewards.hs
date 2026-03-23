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

module MAlonzo.Code.Ledger.Conway.Foreign.Rewards where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data HsRewardUpdate = MkRewardUpdate
  { deltaT  :: Integer
  , deltaR  :: Integer
  , deltaF  :: Integer
  , rs      ::
      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap
        MAlonzo.Code.Ledger.Core.Foreign.Address.Credential
        Integer
  }
  deriving (Eq, Show)
data Snapshot = MkSnapshot {stake :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential Integer), delegations :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential Integer), pools :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Conway.Foreign.Certs.StakePoolParams)}
 deriving (Show, Eq, Generic)
data Snapshots = MkSnapshots {mark :: MAlonzo.Code.Ledger.Conway.Foreign.Rewards.Snapshot, set :: MAlonzo.Code.Ledger.Conway.Foreign.Rewards.Snapshot, go :: MAlonzo.Code.Ledger.Conway.Foreign.Rewards.Snapshot, feeSS :: Integer}
 deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__1 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__10 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Rewards._.BlocksMade
d_BlocksMade_12 :: ()
d_BlocksMade_12 = erased
-- Ledger.Conway.Foreign.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_14 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_14
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_3050
-- Ledger.Conway.Foreign.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_16 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_16
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3128
-- Ledger.Conway.Foreign.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_18 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_18
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_3126
-- Ledger.Conway.Foreign.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_20 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
d_HasPools'45'Snapshot_20
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_3048
-- Ledger.Conway.Foreign.Rewards._.HasSnapshots
d_HasSnapshots_22 a0 a1 = ()
-- Ledger.Conway.Foreign.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_26 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1286
d_HasStake'45'Snapshot_26
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_3044
-- Ledger.Conway.Foreign.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_28 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
d_HasStakeDelegs'45'Snapshot_28
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3046
-- Ledger.Conway.Foreign.Rewards._.RewardUpdate
d_RewardUpdate_30 = ()
-- Ledger.Conway.Foreign.Rewards._.Snapshot
d_Snapshot_38 = ()
-- Ledger.Conway.Foreign.Rewards._.Snapshots
d_Snapshots_42 = ()
-- Ledger.Conway.Foreign.Rewards._.SnapshotsOf
d_SnapshotsOf_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086
d_SnapshotsOf_46 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3118
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.maxPool
d_maxPool_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_48
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2722
-- Ledger.Conway.Foreign.Rewards._.mkApparentPerformance
d_mkApparentPerformance_50 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_50
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2758
-- Ledger.Conway.Foreign.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_52 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2718
-- Ledger.Conway.Foreign.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_54 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_54 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Foreign.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_56 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_56
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2702
-- Ledger.Conway.Foreign.Rewards._.poolStake
d_poolStake_58 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_58
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2866
         (coe v0))
-- Ledger.Conway.Foreign.Rewards._.reward
d_reward_60 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_60
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2922
         (coe v0))
-- Ledger.Conway.Foreign.Rewards._.rewardMember
d_rewardMember_62 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_62
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2796
-- Ledger.Conway.Foreign.Rewards._.rewardOnePool
d_rewardOnePool_64 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_64
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2816
         (coe v0))
-- Ledger.Conway.Foreign.Rewards._.rewardOwners
d_rewardOwners_66 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_66
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2776
-- Ledger.Conway.Foreign.Rewards._.stakeDistr
d_stakeDistr_68 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028
d_stakeDistr_68
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
              (coe
                 MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3056
         (coe v0))
-- Ledger.Conway.Foreign.Rewards._.uncurryᵐ
d_uncurry'7504'_70 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_70 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2886
      v3 v4 v5
-- Ledger.Conway.Foreign.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086
d_SnapshotsOf_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_3118
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.RewardUpdate.flowConservation
d_flowConservation_82 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_82 = erased
-- Ledger.Conway.Foreign.Rewards._.RewardUpdate.rs
d_rs_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3016 (coe v0)
-- Ledger.Conway.Foreign.Rewards._.RewardUpdate.Δf
d_Δf_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  Integer
d_Δf_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3014 (coe v0)
-- Ledger.Conway.Foreign.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_3024
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.RewardUpdate.Δr
d_Δr_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  Integer
d_Δr_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3012 (coe v0)
-- Ledger.Conway.Foreign.Rewards._.RewardUpdate.Δt
d_Δt_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  Integer
d_Δt_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3010 (coe v0)
-- Ledger.Conway.Foreign.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_3022
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.Snapshot.delegations
d_delegations_98 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_98 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3038
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.Snapshot.pools
d_pools_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3040
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.Snapshot.stake
d_stake_102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3036
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.Snapshots.feeSS
d_feeSS_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  Integer
d_feeSS_106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3102
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.Snapshots.go
d_go_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028
d_go_108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3100 (coe v0)
-- Ledger.Conway.Foreign.Rewards._.Snapshots.mark
d_mark_110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028
d_mark_110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3096
      (coe v0)
-- Ledger.Conway.Foreign.Rewards._.Snapshots.set
d_set_112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028
d_set_112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3098
      (coe v0)
-- Ledger.Conway.Foreign.Rewards.Show-SNAP
d_Show'45'SNAP_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2692 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'SNAP_120 ~v0 ~v1 ~v2 = du_Show'45'SNAP_120
du_Show'45'SNAP_120 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'SNAP_120
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe (\ v0 -> seq (coe v0) (coe ("SNAP:" :: Data.Text.Text))))
-- Ledger.Conway.Foreign.Rewards.HsTy-Snapshot
d_HsTy'45'Snapshot_128 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Snapshot_128 = erased
-- Ledger.Conway.Foreign.Rewards.Conv-Snapshot
d_Conv'45'Snapshot_130 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Snapshot_130
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3042 v1 v2 v3
                -> coe
                     C_MkSnapshot_1435
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshot_1435 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3042
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
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
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
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
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                           (coe v3)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Rewards.HsTy-Snapshots
d_HsTy'45'Snapshots_132 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Snapshots_132 = erased
-- Ledger.Conway.Foreign.Rewards.Conv-Snapshots
d_Conv'45'Snapshots_134 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Snapshots_134
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3104 v1 v2 v3 v4
                -> coe
                     C_MkSnapshots_4323
                     (coe
                        C_MkSnapshot_1435
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3036
                                    (coe v1)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3038
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3040
                                    (coe v1))))))
                     (coe
                        C_MkSnapshot_1435
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3036
                                    (coe v2)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3038
                                    (coe v2)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3040
                                    (coe v2))))))
                     (coe
                        C_MkSnapshot_1435
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3036
                                    (coe v3)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3038
                                    (coe v3)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3040
                                    (coe v3))))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshots_4323 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3104
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3042 v6 v7 v8
                                     -> coe
                                          C_MkSnapshot_1435
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_1435 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3042
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
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v6)))
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
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v8)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3042 v6 v7 v8
                                     -> coe
                                          C_MkSnapshot_1435
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_1435 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3042
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
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v6)))
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
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v8)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3042 v6 v7 v8
                                     -> coe
                                          C_MkSnapshot_1435
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
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
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_1435 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3042
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
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v6)))
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
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v7)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                (coe v8)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Rewards.HsRewardUpdate
d_HsRewardUpdate_136 = ()
type T_HsRewardUpdate_136 = HsRewardUpdate
pattern C_constructor_154 a0 a1 a2 a3 = MkRewardUpdate a0 a1 a2 a3
check_constructor_154 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591
    Integer ->
  T_HsRewardUpdate_136
check_constructor_154 = MkRewardUpdate
cover_HsRewardUpdate_136 :: HsRewardUpdate -> ()
cover_HsRewardUpdate_136 x
  = case x of
      MkRewardUpdate _ _ _ _ -> ()
-- Ledger.Conway.Foreign.Rewards.HsRewardUpdate.Δt
d_Δt_146 :: T_HsRewardUpdate_136 -> Integer
d_Δt_146 v0
  = case coe v0 of
      C_constructor_154 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.Rewards.HsRewardUpdate.Δr
d_Δr_148 :: T_HsRewardUpdate_136 -> Integer
d_Δr_148 v0
  = case coe v0 of
      C_constructor_154 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.Rewards.HsRewardUpdate.Δf
d_Δf_150 :: T_HsRewardUpdate_136 -> Integer
d_Δf_150 v0
  = case coe v0 of
      C_constructor_154 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.Rewards.HsRewardUpdate.rs
d_rs_152 ::
  T_HsRewardUpdate_136 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591 Integer
d_rs_152 v0
  = case coe v0 of
      C_constructor_154 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.Rewards.HsTy-RewardUpdate
d_HsTy'45'RewardUpdate_156 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RewardUpdate_156 = erased
-- Ledger.Conway.Foreign.Rewards.Conv-RewardUpdate
d_Conv'45'RewardUpdate_158 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RewardUpdate_158
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            coe
              C_constructor_154
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_3010
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_3012
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_3014
                 (coe v0))
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
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_3016
                          (coe v0)))))))
      (coe (\ v0 -> d_HsRewardUpdate'8594'RewardUpdate_208 (coe v0)))
-- Ledger.Conway.Foreign.Rewards._._.ru.rs
d_rs_192 ::
  T_HsRewardUpdate_136 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591 Integer
d_rs_192 v0 = coe d_rs_152 (coe v0)
-- Ledger.Conway.Foreign.Rewards._._.ru.Δf
d_Δf_194 :: T_HsRewardUpdate_136 -> Integer
d_Δf_194 v0 = coe d_Δf_150 (coe v0)
-- Ledger.Conway.Foreign.Rewards._._.ru.Δr
d_Δr_196 :: T_HsRewardUpdate_136 -> Integer
d_Δr_196 v0 = coe d_Δr_148 (coe v0)
-- Ledger.Conway.Foreign.Rewards._._.ru.Δt
d_Δt_198 :: T_HsRewardUpdate_136 -> Integer
d_Δt_198 v0 = coe d_Δt_146 (coe v0)
-- Ledger.Conway.Foreign.Rewards._._.HsRewardUpdate→RewardUpdate
d_HsRewardUpdate'8594'RewardUpdate_208 ::
  T_HsRewardUpdate_136 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2992
d_HsRewardUpdate'8594'RewardUpdate_208 v0
  = let v1
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℤ_28)
                 (coe
                    MAlonzo.Code.Data.Integer.Base.d__'43'__284
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d__'43'__284
                       (coe
                          MAlonzo.Code.Data.Integer.Base.d__'43'__284 (coe d_Δt_146 (coe v0))
                          (coe d_Δr_148 (coe v0)))
                       (coe d_Δf_150 (coe v0)))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
                          (coe
                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                             (coe
                                MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
                                (coe
                                   MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                       (coe
                          MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                       (coe (\ v1 -> v1))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                             (let v1
                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                              coe
                                (let v2
                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                           (coe v1) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                               (coe v2))))
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                            (coe v2))))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                             (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                             (coe d_rs_152 (coe v0))))))
                 (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12)) in
    coe
      (let v2
             = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Class.Decidable.Instances.d_ℤ'45'Dec'45''8804'_38
                    MAlonzo.Code.Data.Integer.Base.d_0ℤ_12 (d_Δt_146 (coe v0))) in
       coe
         (let v3
                = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℤ'45'Dec'45''8804'_38
                       (d_Δf_150 (coe v0)) MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) in
          coe
            (case coe v1 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                 -> let v6
                          = coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
                              ("Formal Spec: cannot make a non-zero reward update"
                               ::
                               Data.Text.Text) in
                    coe
                      (case coe v4 of
                         MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                           -> case coe v5 of
                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                                  -> case coe v2 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                         -> case coe v8 of
                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                -> case coe v9 of
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                                       -> case coe v3 of
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                                              -> case coe v11 of
                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                     -> case coe v12 of
                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                                            -> coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3026
                                                                                 (d_Δt_146 (coe v0))
                                                                                 (d_Δr_148 (coe v0))
                                                                                 (d_Δf_150 (coe v0))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                       (let v14
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                        coe
                                                                                          (let v15
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                     (coe
                                                                                                        v14) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                                                         (coe
                                                                                                            v15))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                                                                                                      (coe
                                                                                                         v15))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_212)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                    (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                       (coe
                                                                                          d_rs_152
                                                                                          (coe
                                                                                             v0))))
                                                                                 v10 v13
                                                                          _ -> coe v6
                                                                   _ -> coe v6
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> coe v6
                                              _ -> coe v6
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> coe v6
                         _ -> coe v6)
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Foreign.Rewards.Snapshot
d_Snapshot_1433 = ()
type T_Snapshot_1433 = Snapshot
pattern C_MkSnapshot_1435 a0 a1 a2 = MkSnapshot a0 a1 a2
check_MkSnapshot_1435 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_591
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer
    MAlonzo.Code.Ledger.Conway.Foreign.Certs.T_StakePoolParams_81 ->
  T_Snapshot_1433
check_MkSnapshot_1435 = MkSnapshot
cover_Snapshot_1433 :: Snapshot -> ()
cover_Snapshot_1433 x
  = case x of
      MkSnapshot _ _ _ -> ()
-- Ledger.Conway.Foreign.Rewards.Snapshots
d_Snapshots_4321 = ()
type T_Snapshots_4321 = Snapshots
pattern C_MkSnapshots_4323 a0 a1 a2 a3 = MkSnapshots a0 a1 a2 a3
check_MkSnapshots_4323 ::
  T_Snapshot_1433 ->
  T_Snapshot_1433 -> T_Snapshot_1433 -> Integer -> T_Snapshots_4321
check_MkSnapshots_4323 = MkSnapshots
cover_Snapshots_4321 :: Snapshots -> ()
cover_Snapshots_4321 x
  = case x of
      MkSnapshots _ _ _ _ -> ()
