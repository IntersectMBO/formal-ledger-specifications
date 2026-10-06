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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
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
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty

import GHC.Generics (Generic)
data LeiosSeat = MkLeiosSeat {lsPool :: Integer, lsWeight :: MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.Rational, lsKey :: (Maybe Integer)}
  deriving (Show, Eq, Generic)
data NewEpochState = MkNewEpochState {nesLastEpoch :: Integer, nesBprev :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer Integer), nesBcur :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer Integer), nesEpochState :: MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.EpochState, nesRu :: (Maybe MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.RewardUpdate), nesPd :: (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.HSMap Integer Integer), nesLeiosCommittee :: [MAlonzo.Code.Ledger.Dijkstra.Foreign.NewEpoch.LeiosSeat]}
  deriving (Show, Eq, Generic)
-- Ledger.Dijkstra.Foreign.NewEpoch._._≼_
d__'8828'__10 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1460 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1460 ->
  ()
d__'8828'__10 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasCast-LeiosSeat
d_HasCast'45'LeiosSeat_12 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LeiosSeat_12
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.du_HasCast'45'LeiosSeat_1478
-- Ledger.Dijkstra.Foreign.NewEpoch._.LeiosCommittee
d_LeiosCommittee_14 :: ()
d_LeiosCommittee_14 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch._.LeiosSeat
d_LeiosSeat_16 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.certificationDelay
d_certificationDelay_20 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer
d_certificationDelay_20
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_certificationDelay_1636
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2880
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Dijkstra.Foreign.NewEpoch._.honouredBlsKey
d_honouredBlsKey_22 ::
  Integer ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_honouredBlsKey_22
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_honouredBlsKey_1482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2880
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Dijkstra.Foreign.NewEpoch._.maxKeyAge
d_maxKeyAge_24 :: Integer
d_maxKeyAge_24
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_maxKeyAge_1480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2880
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Dijkstra.Foreign.NewEpoch._.selectCommittee
d_selectCommittee_26 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_314 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1460]
d_selectCommittee_26
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_selectCommittee_1604
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2880
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
            (coe
               MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
-- Ledger.Dijkstra.Foreign.NewEpoch._.LeiosSeat.key
d_key_30 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1460 ->
  Maybe Integer
d_key_30 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_key_1472
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.LeiosSeat.pool
d_pool_32 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1460 ->
  Integer
d_pool_32 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_pool_1468
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.LeiosSeat.weight
d_weight_34 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1460 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_weight_34 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.d_weight_1470
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__38 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__40 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.EpochState
d_EpochState_44 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.EpochStateOf
d_EpochStateOf_48 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170
d_EpochStateOf_48 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4206
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Governance-Update
d_Governance'45'Update_50 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasCast-EpochState
d_HasCast'45'EpochState_56 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_56
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasCast'45'EpochState_4328
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_58 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_58
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasCast'45'NewEpochState_4330
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_60 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1912
d_HasCertState'45'NewEpochState_60
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasCertState'45'NewEpochState_4320
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasDReps-EpochState
d_HasDReps'45'EpochState_62 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284
d_HasDReps'45'EpochState_62
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasDReps'45'EpochState_4222
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_64 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1284
d_HasDReps'45'NewEpochState_64
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasDReps'45'NewEpochState_4322
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_66 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
d_HasEnactState'45'EpochState_66
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'EpochState_4220
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_68 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_HasEnactState_1356
d_HasEnactState'45'NewEpochState_68
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEnactState'45'NewEpochState_4312
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasEpochState
d_HasEpochState_70 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_74 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4198
d_HasEpochState'45'NewEpochState_74
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasEpochState'45'NewEpochState_4310
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasGovState-EpochState
d_HasGovState'45'EpochState_76 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2132
d_HasGovState'45'EpochState_76
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasGovState'45'EpochState_4218
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_78 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.T_HasGovState_2132
d_HasGovState'45'NewEpochState_78
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasGovState'45'NewEpochState_4318
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasLastEpoch
d_HasLastEpoch_80 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_84 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4292
d_HasLastEpoch'45'NewEpochState_84
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_4308
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasLedgerState-EpochState
d_HasLedgerState'45'EpochState_86 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948
d_HasLedgerState'45'EpochState_86
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'EpochState_4216
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasLedgerState-NewEpochState
d_HasLedgerState'45'NewEpochState_88 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_HasLedgerState_3948
d_HasLedgerState'45'NewEpochState_88
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasLedgerState'45'NewEpochState_4316
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasNewEpochState
d_HasNewEpochState_90 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasPParams-EpochState
d_HasPParams'45'EpochState_94 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'EpochState_94
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasPParams'45'EpochState_4228
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_96 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_732
d_HasPParams'45'NewEpochState_96
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasPParams'45'NewEpochState_4326
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasPState-EpochState
d_HasPState'45'EpochState_98 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1872
d_HasPState'45'EpochState_98
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasPState'45'EpochState_4232
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_HasRatifyState_2180
d_HasRatifyState'45'EpochState_100
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasRatifyState'45'EpochState_4230
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasReserves-EpochState
d_HasReserves'45'EpochState_102 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'EpochState_102
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasReserves'45'EpochState_4226
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasRetiring-EpochState
d_HasRetiring'45'EpochState_104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1772
d_HasRetiring'45'EpochState_104
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasRetiring'45'EpochState_4234
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1792
d_HasRewards'45'NewEpochState_106
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasRewards'45'NewEpochState_4324
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasSnapshots-EpochState
d_HasSnapshots'45'EpochState_108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_HasSnapshots_3988
d_HasSnapshots'45'EpochState_108
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasSnapshots'45'EpochState_4214
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasTreasury-EpochState
d_HasTreasury'45'EpochState_110 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'EpochState_110
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasTreasury'45'EpochState_4224
-- Ledger.Dijkstra.Foreign.NewEpoch._.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_112 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_Hastreasury'45'NewEpochState_112
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_Hastreasury'45'NewEpochState_4314
-- Ledger.Dijkstra.Foreign.NewEpoch._.LastEpochOf
d_LastEpochOf_114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4292 ->
  AgdaAny -> Integer
d_LastEpochOf_114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4300
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochState
d_NewEpochState_122 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochStateOf
d_NewEpochStateOf_126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4272 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236
d_NewEpochStateOf_126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4280
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.PoolDelegatedStake
d_PoolDelegatedStake_128 :: ()
d_PoolDelegatedStake_128 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAP-Update
d_Post'45'POOLREAP'45'Update_130 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.Pre-POOLREAP-Update
d_Pre'45'POOLREAP'45'Update_136 = ()
-- Ledger.Dijkstra.Foreign.NewEpoch._.applyFPools
d_applyFPools_142 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_applyFPools_142
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_applyFPools_4674
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.applyRUpd
d_applyRUpd_144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170
d_applyRUpd_144
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_applyRUpd_4464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_146
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_calculatePoolDelegatedStake_4520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.calculatePoolDelegatedStakeForVoting
d_calculatePoolDelegatedStakeForVoting_148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStakeForVoting_148
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_calculatePoolDelegatedStakeForVoting_4574
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.calculateVDelegDelegatedStake
d_calculateVDelegDelegatedStake_150 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculateVDelegDelegatedStake_150
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_calculateVDelegDelegatedStake_4572
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.createRUpd
d_createRUpd_152 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870
d_createRUpd_152
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_createRUpd_4332
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.getOrphans
d_getOrphans_154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_154
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_getOrphans_4638
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.stakeFromGADeposits
d_stakeFromGADeposits_156 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_156
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_stakeFromGADeposits_4532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.toRewardAddress
d_toRewardAddress_158 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_toRewardAddress_158
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_toRewardAddress_4670
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.EpochState.acnt
d_acnt_176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_acnt_176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4182
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.EpochState.es
d_es_178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328
d_es_178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4188 (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.EpochState.fut
d_fut_180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2160
d_fut_180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4190
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.EpochState.ls
d_ls_182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928
d_ls_182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186 (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.EpochState.ss
d_ss_184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3964
d_ss_184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184 (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Governance-Update.govSt'
d_govSt''_188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4702
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Governance-Update.removedGovActions
d_removedGovActions_190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_removedGovActions_4700
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.GovernanceUpdate.govSt'
d_govSt''_194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2160 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_194
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_govSt''_4742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.GovernanceUpdate.orphans
d_orphans_196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2160 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_196
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_orphans_4732
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.GovernanceUpdate.removed'
d_removed''_198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2160 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_198
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_removed''_4734
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.GovernanceUpdate.removedGovActions
d_removedGovActions_200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2160 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_200
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_removedGovActions_4736
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.GovernanceUpdate.tmpGovSt
d_tmpGovSt_202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2160 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_202
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_tmpGovSt_4728
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.GovernanceUpdate.updates
d_updates_204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2160 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694
d_updates_204
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4746
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasEpochState.EpochStateOf
d_EpochStateOf_208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasEpochState_4198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170
d_EpochStateOf_208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_EpochStateOf_4206
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasLastEpoch.LastEpochOf
d_LastEpochOf_212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasLastEpoch_4292 ->
  AgdaAny -> Integer
d_LastEpochOf_212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_LastEpochOf_4300
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_HasNewEpochState_4272 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236
d_NewEpochStateOf_216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_NewEpochStateOf_4280
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochState.bcur
d_bcur_220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4256
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochState.bprev
d_bprev_222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4254
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochState.epochState
d_epochState_224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170
d_epochState_224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4258
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochState.lastEpoch
d_lastEpoch_226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  Integer
d_lastEpoch_226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4252
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochState.leiosCommittee
d_leiosCommittee_228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.T_LeiosSeat_1460]
d_leiosCommittee_228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_leiosCommittee_4264
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochState.pd
d_pd_230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4262 (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.NewEpochState.ru
d_ru_232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_RewardUpdate_3870
d_ru_232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4260 (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAP-Update.acnt''
d_acnt''''_236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4812 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_acnt''''_236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt''''_4820
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAP-Update.dState''
d_dState''''_238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4812 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528
d_dState''''_238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_dState''''_4818
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAPUpdate.acnt''
d_acnt''''_242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196
d_acnt''''_242
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_acnt''''_4862
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAPUpdate.dState''
d_dState''''_244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528
d_dState''''_244 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_dState''''_4854
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0 v2 v4
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAPUpdate.govActionReturns
d_govActionReturns_246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_246 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_govActionReturns_4842
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v4
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAPUpdate.payout
d_payout_248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_248 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_payout_4850
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0 v4
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAPUpdate.refunds
d_refunds_250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_250 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_refunds_4852
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0 v2 v4
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAPUpdate.totWithdrawals
d_totWithdrawals_252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  Integer
d_totWithdrawals_252 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_totWithdrawals_4858
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAPUpdate.unclaimed
d_unclaimed_254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  Integer
d_unclaimed_254 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_unclaimed_4856
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0 v2 v4
-- Ledger.Dijkstra.Foreign.NewEpoch._.Post-POOLREAPUpdate.updates
d_updates_256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_196 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4812
d_updates_256
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4864
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.Pre-POOLREAP-Update.gState'
d_gState''_260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_4748 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1568
d_gState''_260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_gState''_4758
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Pre-POOLREAP-Update.pState'
d_pState''_262 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_4748 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1548
d_pState''_262 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4756
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Pre-POOLREAP-Update.utxoSt'
d_utxoSt''_264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_4748 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294
d_utxoSt''_264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4760
      (coe v0)
-- Ledger.Dijkstra.Foreign.NewEpoch._.Pre-POOLREAPUpdate.gState'
d_gState''_268 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1568
d_gState''_268 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_gState''_4808
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.NewEpoch._.Pre-POOLREAPUpdate.pState'
d_pState''_270 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1548
d_pState''_270 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_pState''_4806
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0 v1
-- Ledger.Dijkstra.Foreign.NewEpoch._.Pre-POOLREAPUpdate.updates
d_updates_272 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_4748
d_updates_272
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4810
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.Pre-POOLREAPUpdate.utxoSt'
d_utxoSt''_274 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3928 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1328 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4694 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294
d_utxoSt''_274 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_utxoSt''_4804
      v1
-- Ledger.Dijkstra.Foreign.NewEpoch._.VDelegDelegatedStake.activeDReps
d_activeDReps_278 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_activeDReps_4554
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0 v3
-- Ledger.Dijkstra.Foreign.NewEpoch._.VDelegDelegatedStake.activeVDelegs
d_activeVDelegs_280 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_VDeleg_1056]
d_activeVDelegs_280 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_activeVDelegs_4556
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v0 v3
-- Ledger.Dijkstra.Foreign.NewEpoch._.VDelegDelegatedStake.calculate
d_calculate_282 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculate_282
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_calculate_4566
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.VDelegDelegatedStake.stakePerCredential
d_stakePerCredential_284 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1528 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_stakePerCredential_284 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_stakePerCredential_4558
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
      v1 v2 v4 v5
-- Ledger.Dijkstra.Foreign.NewEpoch._.Computational-EPOCH
d_Computational'45'EPOCH_288 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_288
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_Computational'45'EPOCH_4206
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_290 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_290
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_Computational'45'NEWEPOCH_4356
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.EPOCH-complete
d_EPOCH'45'complete_292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4866 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_292 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch._.EPOCH-complete'
d_EPOCH'45'complete''_294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4866 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_294 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch._.EPOCH-deterministic
d_EPOCH'45'deterministic_296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4866 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_296 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch._.EPOCH-total
d_EPOCH'45'total_298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_298
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_EPOCH'45'total_4052
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.EPOCH-total'
d_EPOCH'45'total''_300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4170 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_300
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_4200
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_302 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__4892 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_302 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch._.NEWEPOCH-total
d_NEWEPOCH'45'total_304 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_304
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_4234
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24))
-- Ledger.Dijkstra.Foreign.NewEpoch.HsTy-LeiosSeat
d_HsTy'45'LeiosSeat_306 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'LeiosSeat_306 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch.Conv-LeiosSeat
d_Conv'45'LeiosSeat_308 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'LeiosSeat_308
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.C_constructor_1474 v1 v2 v3
                -> coe
                     C_MkLeiosSeat_691 (coe v1)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                     -> coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                          (coe v5) (coe addInt (coe (1 :: Integer)) (coe v6))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v5 v6
                                     -> case coe v6 of
                                          0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                          _ -> coe
                                                 MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                 (coe v5) (coe v6)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkLeiosSeat_691 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.C_constructor_1474
                     (coe v1)
                     (let v4
                            = MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_toUnitInterval_74
                                (coe
                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                   (coe
                                      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                      (coe
                                         (\ v4 ->
                                            case coe v4 of
                                              MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
                                                -> coe
                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24
                                                     (coe v5)
                                                     (coe addInt (coe (1 :: Integer)) (coe v6))
                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                      (coe
                                         (\ v4 ->
                                            case coe v4 of
                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__24 v5 v6
                                                -> case coe v6 of
                                                     0 -> coe
                                                            MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                                     _ -> coe
                                                            MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                            (coe v5) (coe v6)
                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                   v2) in
                      coe
                        (case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5 -> coe v5
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe
                                  MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
                                  ("Formal Spec: rational outside of unit interval"
                                   ::
                                   Data.Text.Text)
                           _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.NewEpoch.HsTy-NewEpochState
d_HsTy'45'NewEpochState_310 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'NewEpochState_310 = erased
-- Ledger.Dijkstra.Foreign.NewEpoch.Conv-NewEpochState
d_Conv'45'NewEpochState_312 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'NewEpochState_312
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4266 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     C_MkNewEpochState_1969 (coe v1)
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4182
                                 (coe v4)))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4182
                                 (coe v4))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3974
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4)))))))
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3974
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4)))))))
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
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3974
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4))))))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3976
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4)))))))
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3976
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4)))))))
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
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3976
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4))))))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3978
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4)))))))
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3978
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4)))))))
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
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3978
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                                (coe v4))))))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3980
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4184
                                 (coe v4))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3302
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                (coe v4)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3304
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                       (coe v4))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3306
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                       (coe v4)))))
                           (coe
                              MAlonzo.Code.Class.Functor.Core.du_fmap_22
                              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                              () erased
                              (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3938
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                    (coe v4))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
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
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1538
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4))))))))
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1540
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4))))))))
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1542
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4))))))))
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1544
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
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
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1558
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4))))))))
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
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1560
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4))))))))
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
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1562
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4))))))))
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
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1564
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1576
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4))))))))
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
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1578
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4))))))))
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1580
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4186
                                                      (coe v4)))))))))))
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
                                             (let v8
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                              coe
                                                (let v9
                                                       = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                           (coe v8) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                               (coe v9))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                            (coe v9))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                 (coe
                                    (\ v8 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4188
                                       (coe v4)))))
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
                                    (\ v8 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4188
                                       (coe v4)))))
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
                                    (\ v8 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4188
                                       (coe v4)))))
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
                                    (\ v8 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4188
                                       (coe v4)))))
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
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4188
                                          (coe v4)))))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679
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
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                    (coe
                                       (\ v8 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4190
                                             (coe v4))))))
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
                                       (\ v8 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4190
                                             (coe v4))))))
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
                                       (\ v8 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4190
                                             (coe v4))))))
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
                                       (\ v8 ->
                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                            (coe
                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4190
                                             (coe v4))))))
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4190
                                                (coe v4))))))))
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
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2170
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4190
                                       (coe v4)))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2172
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4190
                                 (coe v4)))))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.d_Conv'45'RewardUpdate_204))
                        v5)
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_to_20
                           (coe d_Conv'45'LeiosSeat_308))
                        v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkNewEpochState_1969 v1 v2 v3 v4 v5 v6 v7
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4266
                     (coe v1)
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
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
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
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v3))))
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4192 v9 v10 v11 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_202
                                                (coe v9))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_204
                                                (coe v9)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3974
                                                               (coe v10))))))
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3974
                                                               (coe v10))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3974
                                                               (coe v10)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3976
                                                               (coe v10))))))
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3976
                                                               (coe v10))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3976
                                                               (coe v10)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3978
                                                               (coe v10))))))
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3978
                                                               (coe v10))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3978
                                                               (coe v10)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3980
                                                (coe v10)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                            (coe
                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3302
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
                                                               (coe v11))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3304
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
                                                      (coe v11)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3306
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3936
                                                      (coe v11))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3938
                                                   (coe v11)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
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
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1538
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1540
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1542
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1544
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1558
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11)))))))
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1560
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11)))))))
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1562
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11)))))))
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1564
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1576
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11)))))))
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
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1578
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11)))))))
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1580
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3940
                                                                     (coe v11))))))))))
                                          (coe
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
                                                               (let v14
                                                                      = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                coe
                                                                  (let v15
                                                                         = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                             (coe v14) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                 (coe v15))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                              (coe v15))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                   (coe
                                                      (\ v14 ->
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                                      (coe v12))))
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
                                                      (\ v14 ->
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                      (coe v12))))
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
                                                      (\ v14 ->
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                                      (coe v12))))
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
                                                      (\ v14 ->
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                      (coe v12))))
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                                         (coe v12))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
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
                                                                  (let v14
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                   coe
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                (coe v14) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                    (coe v15))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                 (coe v15))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                      (coe
                                                         (\ v14 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                                            (coe v13)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
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
                                                         (\ v14 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                                            (coe v13)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
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
                                                         (\ v14 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                                            (coe v13)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                      (coe
                                                         (\ v14 ->
                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                                            (coe v13)))))
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2168
                                                               (coe v13)))))))
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_removed_2170
                                                      (coe v13))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_delay_2172
                                                (coe v13)))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v8 ->
                                 case coe v8 of
                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.C_MkEpochState_655 v9 v10 v11 v12 v13
                                     -> coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4192
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_206 v15 v16
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715
                                                               (coe v15) (coe v16)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.C_MkAcnt_11715 v15 v16
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_'10214'_'44'_'10215''7491'_206
                                                               (coe v15) (coe v16)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3982 v15 v16 v17 v18
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                                                              (coe v15)))))
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                                                              (coe v15)))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                                                              (coe v15))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                                                              (coe v16)))))
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                                                              (coe v16)))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                                                              (coe v16))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_stake_3914
                                                                              (coe v17)))))
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_delegations_3916
                                                                              (coe v17)))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_pools_3918
                                                                              (coe v17))))))
                                                               (coe v18)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshots_3019 v15 v16 v17 v18
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3982
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v19 ->
                                                                           case coe v19 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3920 v20 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                                                                v20))))
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
                                                                                                v21))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v22))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v19 ->
                                                                           case coe v19 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v20 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3920
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v23
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v23) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                         (coe
                                                                                                            v24))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                      (coe
                                                                                                         v24))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v20))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v23
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v23) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                         (coe
                                                                                                            v24))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                      (coe
                                                                                                         v24))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v21))))
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
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v22))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v19 ->
                                                                           case coe v19 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3920 v20 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                                                                v20))))
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
                                                                                                v21))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v22))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v19 ->
                                                                           case coe v19 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v20 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3920
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v23
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v23) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                         (coe
                                                                                                            v24))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                      (coe
                                                                                                         v24))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v20))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v23
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v23) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                         (coe
                                                                                                            v24))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                      (coe
                                                                                                         v24))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v21))))
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
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v22))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v19 ->
                                                                           case coe v19 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3920 v20 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187
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
                                                                                                v20))))
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
                                                                                                v21))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v22))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v19 ->
                                                                           case coe v19 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.C_MkSnapshot_187 v20 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_constructor_3920
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v23
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v23) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                         (coe
                                                                                                            v24))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                      (coe
                                                                                                         v24))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v20))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v23
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v24
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v23) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                         (coe
                                                                                                            v24))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                      (coe
                                                                                                         v24))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v21))))
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
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v23 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                               (coe
                                                                                                  (\ v24 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v23))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v22))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v17)
                                                               (coe v18)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v10)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_3942 v15 v16 v17
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3302
                                                                              (coe v15)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3304
                                                                     (coe v15))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3306
                                                                     (coe v15)))
                                                               (coe
                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
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
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1538
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                                                    (coe v17))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1540
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                                                    (coe v17))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1542
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                                                    (coe v17))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1544
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1592
                                                                                    (coe v17)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1558
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                                                    (coe v17))))))
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1560
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                                                    (coe v17))))))
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1562
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                                                    (coe v17))))))
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1564
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1594
                                                                                    (coe v17)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1576
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                                                    (coe v17))))))
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
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1578
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                                                    (coe v17))))))
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1580
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1596
                                                                                    (coe v17))))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Ledger.C_MkLedgerState_33313 v15 v16 v17
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_3942
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v18 ->
                                                                           case coe v18 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3308 v19 v20 v21
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v19))))
                                                                                    (coe v20)
                                                                                    (coe v21)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v18 ->
                                                                           case coe v18 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Utxo.C_MkUTxOState_41043 v19 v20 v21
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3308
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                          () erased
                                                                                          () erased
                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v22 ->
                                                                                             coe
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
                                                                                                  (\ v23 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BaseAddr_226)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'BootstrapAddr_230))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Either_10
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSNativeScript_18)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v22))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v19))))
                                                                                    (coe v20)
                                                                                    (coe v21)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v15)
                                                               (coe
                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                  v16)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v18 ->
                                                                           case coe v18 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1598 v19 v20 v21
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
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
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1538
                                                                                                   (coe
                                                                                                      v19)))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1540
                                                                                                   (coe
                                                                                                      v19)))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1542
                                                                                                   (coe
                                                                                                      v19)))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1544
                                                                                                   (coe
                                                                                                      v19))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
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
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1558
                                                                                                   (coe
                                                                                                      v20)))))
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1560
                                                                                                   (coe
                                                                                                      v20)))))
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1562
                                                                                                   (coe
                                                                                                      v20)))))
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1564
                                                                                                   (coe
                                                                                                      v20))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1576
                                                                                                   (coe
                                                                                                      v21)))))
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
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1578
                                                                                                   (coe
                                                                                                      v21)))))
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1580
                                                                                                   (coe
                                                                                                      v21))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v18 ->
                                                                           case coe v18 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkCertState_37147 v19 v20 v21
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1598
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1546 v23 v24 v25 v26
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909
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
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v23))))
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
                                                                                                                     v24))))
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
                                                                                                                     v25))))
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
                                                                                                                     v26))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkDState_26909 v23 v24 v25 v26
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1546
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v27
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v28
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v27) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                              (coe
                                                                                                                                 v28))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                           (coe
                                                                                                                              v28))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v27
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v28
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v27) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                              (coe
                                                                                                                                 v28))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                           (coe
                                                                                                                              v28))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v27
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v28
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v27) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                              (coe
                                                                                                                                 v28))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                           (coe
                                                                                                                              v28))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v25))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v27
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v28
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v27) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                              (coe
                                                                                                                                 v28))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                           (coe
                                                                                                                              v28))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v26))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v19)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1566 v23 v24 v25 v26
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495
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
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v23))))
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
                                                                                                                  (coe
                                                                                                                     v24))))
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
                                                                                                                  (coe
                                                                                                                     v25))))
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
                                                                                                                  (coe
                                                                                                                     v26))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkPState_22495 v23 v24 v25 v26
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_constructor_1566
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
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolState_22)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
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
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.d_Conv'45'StakePoolParams_18)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
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
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v25))))
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
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v27 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                    (coe
                                                                                                                       (\ v28 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v27))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v26))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v20)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1582 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571
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
                                                                                                                     v23))))
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
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v24))))
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
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v22 ->
                                                                                                case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Certs.C_MkGState_31571 v23 v24 v25
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7515'_1582
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v23))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v24))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (let v26
                                                                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                             coe
                                                                                                               (let v27
                                                                                                                      = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                          (coe
                                                                                                                             v26) in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                              (coe
                                                                                                                                 v27))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                           (coe
                                                                                                                              v27))))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                               MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (\ v26 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                    (coe
                                                                                                                       (\ v27 ->
                                                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       ()
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                       v26))
                                                                                                               (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                                  (coe
                                                                                                                     v25))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v21)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v17)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v11)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1350 v15 v16 v17 v18 v19
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                                 (let v20
                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                  coe
                                                                                    (let v21
                                                                                           = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                               (coe
                                                                                                  v20) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                   (coe
                                                                                                      v21))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                (coe
                                                                                                   v21))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                     (coe
                                                                        (\ v20 ->
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                     (coe v15)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                        (\ v20 ->
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                     (coe v16)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                        (\ v20 ->
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                     (coe v17)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                     (coe
                                                                        (\ v20 ->
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                     (coe v18)))
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
                                                                        (coe v19))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623 v15 v16 v17 v18 v19
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1350
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
                                                                              (let v20
                                                                                     = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                               coe
                                                                                 (let v21
                                                                                        = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                            (coe
                                                                                               v20) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                (coe
                                                                                                   v21))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                             (coe
                                                                                                v21))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                  (coe
                                                                     (\ v20 ->
                                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v15))
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
                                                                     (\ v20 ->
                                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v16))
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
                                                                     (\ v20 ->
                                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v17))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                  (coe
                                                                     (\ v20 ->
                                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v18))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v20
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                   coe
                                                                     (let v21
                                                                            = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                (coe v20) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1414
                                                                                 (coe v21)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                    (coe v21))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                 (coe v21))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v20 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                                          (coe
                                                                             (\ v21 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v20))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v19))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v12)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_2174 v15 v16 v17
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
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
                                                                                    (let v18
                                                                                           = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                     coe
                                                                                       (let v19
                                                                                              = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                  (coe
                                                                                                     v18) in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                      (coe
                                                                                                         v19))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                   (coe
                                                                                                      v19))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                        (coe
                                                                           (\ v18 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1340
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
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
                                                                           (\ v18 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1342
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
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
                                                                           (\ v18 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1344
                                                                           (coe v15))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                        (coe
                                                                           (\ v18 ->
                                                                              MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1346
                                                                           (coe v15))))
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1348
                                                                              (coe v15))))))
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                     v16))
                                                               (coe v17)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v14 ->
                                                      case coe v14 of
                                                        MAlonzo.Code.Ledger.Dijkstra.Foreign.Ratify.C_MkRatifyState_14679 v15 v16 v17
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.C_constructor_2174
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v18 ->
                                                                           case coe v18 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1350 v19 v20 v21 v22 v23
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
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
                                                                                                      (let v24
                                                                                                             = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                       coe
                                                                                                         (let v25
                                                                                                                = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                    (coe
                                                                                                                       v24) in
                                                                                                          coe
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                        (coe
                                                                                                                           v25))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                     (coe
                                                                                                                        v25))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                          (coe
                                                                                             (\ v24 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v19)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
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
                                                                                             (\ v24 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
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
                                                                                             (\ v24 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v21)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                          (coe
                                                                                             (\ v24 ->
                                                                                                MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                          (coe
                                                                                             v22)))
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
                                                                                                v23))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v18 ->
                                                                           case coe v18 of
                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.Enact.C_MkEnactState_1623 v19 v20 v21 v22 v23
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1350
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
                                                                                                   (let v24
                                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                                    coe
                                                                                                      (let v25
                                                                                                             = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                                 (coe
                                                                                                                    v24) in
                                                                                                       coe
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                     (coe
                                                                                                                        v25))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                                  (coe
                                                                                                                     v25))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                                       (coe
                                                                                          (\ v24 ->
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v19))
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
                                                                                          (\ v24 ->
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v20))
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
                                                                                          (\ v24 ->
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v21))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                       (coe
                                                                                          (\ v24 ->
                                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v22))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v24
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
                                                                                        coe
                                                                                          (let v25
                                                                                                 = MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
                                                                                                     (coe
                                                                                                        v24) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1414
                                                                                                      (coe
                                                                                                         v25)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                         (coe
                                                                                                            v25))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1416
                                                                                                      (coe
                                                                                                         v25))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v24 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                                                               (coe
                                                                                                  (\ v25 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v24))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v23))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v15)
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Gov.d_Conv'45'GovActionState_356)))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                                        (coe v16))))
                                                               (coe v17)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v13)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.du_Functor'8658'Convertible_60
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.d_Conv'45'RewardUpdate_204))
                        v5)
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
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                (coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   v8))
                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                              (coe v6))))
                     (coe
                        MAlonzo.Code.Class.Functor.Core.du_fmap_22
                        MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                        () erased
                        (MAlonzo.Code.Class.Convertible.Core.d_from_22
                           (coe d_Conv'45'LeiosSeat_308))
                        v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Foreign.NewEpoch.newepoch-step
newEpochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_NewEpochState_1967 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_NewEpochState_1967
newEpochStep = coe d_newepoch'45'step_314
d_newepoch'45'step_314 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_NewEpochState_1967 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_NewEpochState_1967
d_newepoch'45'step_314 ~v0 = du_newepoch'45'step_314
du_newepoch'45'step_314 ::
  T_NewEpochState_1967 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_NewEpochState_1967
du_newepoch'45'step_314
  = coe
      MAlonzo.Code.Class.Convertible.Core.d_to_20
      (coe
         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
         (coe d_Conv'45'NewEpochState_312)
         (coe
            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Fun_34
            (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
            (coe
               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSComputationResult_134
               (coe
                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45''8869'_18)
               (coe d_Conv'45'NewEpochState_312))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational.du_Computational'45'NEWEPOCH_4356
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures.d_HSTransactionStructure_748
               (coe
                  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Dijkstra.Foreign.NewEpoch.LeiosSeat
d_LeiosSeat_689 = ()
type T_LeiosSeat_689 = LeiosSeat
pattern C_MkLeiosSeat_691 a0 a1 a2 = MkLeiosSeat a0 a1 a2
check_MkLeiosSeat_691 ::
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_Rational_22 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  T_LeiosSeat_689
check_MkLeiosSeat_691 = MkLeiosSeat
cover_LeiosSeat_689 :: LeiosSeat -> ()
cover_LeiosSeat_689 x
  = case x of
      MkLeiosSeat _ _ _ -> ()
-- Ledger.Dijkstra.Foreign.NewEpoch.NewEpochState
d_NewEpochState_1967 = ()
type T_NewEpochState_1967 = NewEpochState
pattern C_MkNewEpochState_1969 a0 a1 a2 a3 a4 a5 a6 = MkNewEpochState a0 a1 a2 a3 a4 a5 a6
check_MkNewEpochState_1969 ::
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Epoch.T_EpochState_653 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Rewards.T_RewardUpdate_5761 ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSMap_46
    Integer Integer ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_LeiosSeat_689 ->
  T_NewEpochState_1967
check_MkNewEpochState_1969 = MkNewEpochState
cover_NewEpochState_1967 :: NewEpochState -> ()
cover_NewEpochState_1967 x
  = case x of
      MkNewEpochState _ _ _ _ _ _ _ -> ()
