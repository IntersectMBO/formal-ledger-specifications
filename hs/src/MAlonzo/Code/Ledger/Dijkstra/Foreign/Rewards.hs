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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.Convertible.Foreign
import qualified MAlonzo.Code.Class.Convertible.Instances
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

import GHC.Generics (Generic)
data Snapshot = MkSnapshot {ssStake :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential Integer), ssDelegations :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential Integer), ssPools :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.StakePoolParams)}
  deriving (Show, Eq, Generic)
data Snapshots = MkSnapshots {mark :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.Snapshot, set :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.Snapshot, go :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.Snapshot, feeSS :: Integer}
  deriving (Show, Eq, Generic)
data RewardUpdate = MkRewardUpdate {ruΔt :: Integer, ruΔr :: Integer, ruΔf :: Integer, ruRs :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Core.Foreign.Address.Credential Integer)}
  deriving (Show, Eq, Generic)
type BlocksMade = (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer Integer)
-- Ledger.Dijkstra.Foreign.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__10 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.Rewards._.BlocksMade
d_BlocksMade_12 :: ()
d_BlocksMade_12 = erased
-- Ledger.Dijkstra.Foreign.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_14 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_14
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasCast'45'Snapshot_3764
-- Ledger.Dijkstra.Foreign.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_16 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_16
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasCast'45'Snapshots_3842
-- Ledger.Dijkstra.Foreign.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_18 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_18
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasFees'45'Snapshots_3840
-- Ledger.Dijkstra.Foreign.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_20 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1512
d_HasPools'45'Snapshot_20
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasPools'45'Snapshot_3762
-- Ledger.Dijkstra.Foreign.Rewards._.HasSnapshots
d_HasSnapshots_22 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_26 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1572
d_HasStake'45'Snapshot_26
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasStake'45'Snapshot_3758
-- Ledger.Dijkstra.Foreign.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_28 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1592
d_HasStakeDelegs'45'Snapshot_28
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_3760
-- Ledger.Dijkstra.Foreign.Rewards._.RewardUpdate
d_RewardUpdate_30 = ()
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshot
d_Snapshot_36 = ()
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshots
d_Snapshots_40 = ()
-- Ledger.Dijkstra.Foreign.Rewards._.SnapshotsOf
d_SnapshotsOf_44 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_HasSnapshots_3824 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3800
d_SnapshotsOf_44 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_SnapshotsOf_3832
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.maxPool
d_maxPool_46 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_46
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_maxPool_3436
-- Ledger.Dijkstra.Foreign.Rewards._.mkApparentPerformance
d_mkApparentPerformance_48 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_48
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_mkApparentPerformance_3472
-- Ledger.Dijkstra.Foreign.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_50 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_50
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_3432
-- Ledger.Dijkstra.Foreign.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_52 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_52 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Dijkstra.Foreign.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_54 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_54
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_nonZero'45'max'45'1_3416
-- Ledger.Dijkstra.Foreign.Rewards._.poolStake
d_poolStake_56 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_56
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_poolStake_3580
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Rewards._.reward
d_reward_58 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_58
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_reward_3636
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Rewards._.rewardMember
d_rewardMember_60 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_60
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_rewardMember_3510
-- Ledger.Dijkstra.Foreign.Rewards._.rewardOnePool
d_rewardOnePool_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_62
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_rewardOnePool_3530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Rewards._.rewardOwners
d_rewardOwners_64 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_64
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_rewardOwners_3490
-- Ledger.Dijkstra.Foreign.Rewards._.stakeDistr
d_stakeDistr_66 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1362 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3742
d_stakeDistr_66
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_stakeDistr_3770
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Dijkstra.Foreign.Rewards._.uncurryᵐ
d_uncurry'7504'_68 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_68 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_uncurry'7504'_3600
      v3 v4 v5
-- Ledger.Dijkstra.Foreign.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_76 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_HasSnapshots_3824 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3800
d_SnapshotsOf_76 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_SnapshotsOf_3832
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.RewardUpdate.flowConservation
d_flowConservation_80 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3706 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_80 = erased
-- Ledger.Dijkstra.Foreign.Rewards._.RewardUpdate.rs
d_rs_82 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_82 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3730
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.RewardUpdate.Δf
d_Δf_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3706 ->
  Integer
d_Δf_84 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3728
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3706 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_86 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf'45'nonpositive_3738
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.RewardUpdate.Δr
d_Δr_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3706 ->
  Integer
d_Δr_88 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3726
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.RewardUpdate.Δt
d_Δt_90 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3706 ->
  Integer
d_Δt_90 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3724
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_92 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3706 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_92 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt'45'nonnegative_3736
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshot.delegations
d_delegations_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3742 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_96 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3752
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshot.pools
d_pools_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3742 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_98 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3754
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshot.stake
d_stake_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3742 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3750
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshots.feeSS
d_feeSS_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3800 ->
  Integer
d_feeSS_104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3816
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshots.go
d_go_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3800 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3742
d_go_106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3814
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshots.mark
d_mark_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3800 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3742
d_mark_108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3810
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards._.Snapshots.set
d_set_110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3800 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3742
d_set_110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3812
      (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards.HsTy-Snapshot
d_HsTy'45'Snapshot_112 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Snapshot_112 = erased
-- Ledger.Dijkstra.Foreign.Rewards.Conv-Snapshot
d_Conv'45'Snapshot_114 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Snapshot_114
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3756 v1 v2 v3
                -> coe
                     C_MkSnapshot_187
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshot_187 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3756
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                (coe
                                   (\ v5 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v4))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                (coe
                                   (\ v5 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v4))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v2))))
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
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                (coe
                                   (\ v5 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v4))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v3))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Rewards.HsTy-Snapshots
d_HsTy'45'Snapshots_116 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'Snapshots_116 = erased
-- Ledger.Dijkstra.Foreign.Rewards.Conv-Snapshots
d_Conv'45'Snapshots_118 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'Snapshots_118
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3818 v1 v2 v3 v4
                -> coe
                     C_MkSnapshots_2907
                     (coe
                        C_MkSnapshot_187
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
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3750
                                    (coe v1)))))
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
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3752
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
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3754
                                    (coe v1))))))
                     (coe
                        C_MkSnapshot_187
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
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3750
                                    (coe v2)))))
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
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3752
                                    (coe v2)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3754
                                    (coe v2))))))
                     (coe
                        C_MkSnapshot_187
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
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3750
                                    (coe v3)))))
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
                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3752
                                    (coe v3)))))
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
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3754
                                    (coe v3))))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshots_2907 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3818
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3756 v6 v7 v8
                                     -> coe
                                          C_MkSnapshot_187
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
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
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
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_187 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3756
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v7))))
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
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3756 v6 v7 v8
                                     -> coe
                                          C_MkSnapshot_187
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
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
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
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_187 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3756
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v7))))
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
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3756 v6 v7 v8
                                     -> coe
                                          C_MkSnapshot_187
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
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
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
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_187 v6 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3756
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v9
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                                           (coe v9) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v10))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v7))))
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
                                                (\ v9 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                     (coe
                                                        (\ v10 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v9))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v8))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Rewards.HsRewardUpdate
d_HsRewardUpdate_120 = ()
data T_HsRewardUpdate_120
  = C_constructor_138 Integer Integer Integer
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Dijkstra.Foreign.Rewards.HsRewardUpdate.Δt
d_Δt_130 :: T_HsRewardUpdate_120 -> Integer
d_Δt_130 v0
  = case coe v0 of
      C_constructor_138 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Rewards.HsRewardUpdate.Δr
d_Δr_132 :: T_HsRewardUpdate_120 -> Integer
d_Δr_132 v0
  = case coe v0 of
      C_constructor_138 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Rewards.HsRewardUpdate.Δf
d_Δf_134 :: T_HsRewardUpdate_120 -> Integer
d_Δf_134 v0
  = case coe v0 of
      C_constructor_138 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Rewards.HsRewardUpdate.rs
d_rs_136 ::
  T_HsRewardUpdate_120 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_136 v0
  = case coe v0 of
      C_constructor_138 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Dijkstra.Foreign.Rewards.iHsTy-ℤ
d_iHsTy'45'ℤ_140 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_iHsTy'45'ℤ_140 = erased
-- Ledger.Dijkstra.Foreign.Rewards.iConv-ℤ
d_iConv'45'ℤ_142 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_iConv'45'ℤ_142
  = coe MAlonzo.Code.Class.Convertible.Core.du_Convertible'45'Refl_34
-- Ledger.Dijkstra.Foreign.Rewards.trustMe-flowConservation
d_trustMe'45'flowConservation_154
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.Rewards.trustMe-flowConservation"
-- Ledger.Dijkstra.Foreign.Rewards.trustMe-nonneg
d_trustMe'45'nonneg_158
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.Rewards.trustMe-nonneg"
-- Ledger.Dijkstra.Foreign.Rewards.trustMe-nonpos
d_trustMe'45'nonpos_162
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.Rewards.trustMe-nonpos"
-- Ledger.Dijkstra.Foreign.Rewards.mkHsRewardUpdate
d_mkHsRewardUpdate_164 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_mkHsRewardUpdate_164
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            coe
              C_constructor_138
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δt_3724
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δr_3726
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_Δf_3728
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_rs_3730
                 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3740
              (d_Δt_130 (coe v0)) (d_Δr_132 (coe v0)) (d_Δf_134 (coe v0))
              (d_rs_136 (coe v0))
              (coe d_trustMe'45'nonneg_158 (d_Δt_130 (coe v0)))
              (coe d_trustMe'45'nonpos_162 (d_Δf_134 (coe v0)))))
-- Ledger.Dijkstra.Foreign.Rewards.Snapshot
d_Snapshot_185 = ()
type T_Snapshot_185 = Snapshot
pattern C_MkSnapshot_187 a0 a1 a2 = MkSnapshot a0 a1 a2
check_MkSnapshot_187 ::
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.T_StakePoolParams_79 ->
  T_Snapshot_185
check_MkSnapshot_187 = MkSnapshot
cover_Snapshot_185 :: Snapshot -> ()
cover_Snapshot_185 x
  = case x of
      MkSnapshot _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Rewards.ru.rs
d_rs_190 ::
  T_HsRewardUpdate_120 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_190 v0 = coe d_rs_136 (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards.ru.Δf
d_Δf_192 :: T_HsRewardUpdate_120 -> Integer
d_Δf_192 v0 = coe d_Δf_134 (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards.ru.Δr
d_Δr_194 :: T_HsRewardUpdate_120 -> Integer
d_Δr_194 v0 = coe d_Δr_132 (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards.ru.Δt
d_Δt_196 :: T_HsRewardUpdate_120 -> Integer
d_Δt_196 v0 = coe d_Δt_130 (coe v0)
-- Ledger.Dijkstra.Foreign.Rewards.HsTy-HsRewardUpdate
d_HsTy'45'HsRewardUpdate_198 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'HsRewardUpdate_198 = erased
-- Ledger.Dijkstra.Foreign.Rewards.Conv-HsRewardUpdate
d_Conv'45'HsRewardUpdate_200 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'HsRewardUpdate_200
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              C_constructor_138 v1 v2 v3 v4
                -> coe
                     C_MkRewardUpdate_5651 (coe v1) (coe v2) (coe v3)
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRewardUpdate_5651 v1 v2 v3 v4
                -> coe
                     C_constructor_138 (coe v1) (coe v2) (coe v3)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (let v5
                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                         coe
                           (let v6
                                  = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_636
                                      (coe v5) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v6))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                       (coe v6))))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Data.Product.Base.du_map_128
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                (coe
                                   (\ v6 ->
                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                        (coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v5))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v4))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.Rewards.HsTy-RewardUpdate
d_HsTy'45'RewardUpdate_202 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'RewardUpdate_202 = erased
-- Ledger.Dijkstra.Foreign.Rewards.Conv-RewardUpdate
d_Conv'45'RewardUpdate_204 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'RewardUpdate_204
  = coe
      MAlonzo.Code.Class.Convertible.Core.du__'10814'__76
      (coe d_mkHsRewardUpdate_164) (coe d_Conv'45'HsRewardUpdate_200)
-- Ledger.Dijkstra.Foreign.Rewards.Snapshots
d_Snapshots_2905 = ()
type T_Snapshots_2905 = Snapshots
pattern C_MkSnapshots_2907 a0 a1 a2 a3 = MkSnapshots a0 a1 a2 a3
check_MkSnapshots_2907 ::
  T_Snapshot_185 ->
  T_Snapshot_185 -> T_Snapshot_185 -> Integer -> T_Snapshots_2905
check_MkSnapshots_2907 = MkSnapshots
cover_Snapshots_2905 :: Snapshots -> ()
cover_Snapshots_2905 x
  = case x of
      MkSnapshots _ _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.Rewards.RewardUpdate
d_RewardUpdate_5649 = ()
type T_RewardUpdate_5649 = RewardUpdate
pattern C_MkRewardUpdate_5651 a0 a1 a2 a3 = MkRewardUpdate a0 a1 a2 a3
check_MkRewardUpdate_5651 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    MAlonzo.Code.Ledger.Core.Foreign.Address.T_Credential_615
    Integer ->
  T_RewardUpdate_5649
check_MkRewardUpdate_5651 = MkRewardUpdate
cover_RewardUpdate_5649 :: RewardUpdate -> ()
cover_RewardUpdate_5649 x
  = case x of
      MkRewardUpdate _ _ _ _ -> ()
