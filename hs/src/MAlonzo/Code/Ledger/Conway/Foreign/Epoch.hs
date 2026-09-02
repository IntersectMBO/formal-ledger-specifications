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

module MAlonzo.Code.Ledger.Conway.Foreign.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
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
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Foreign.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Foreign.Address
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty

import GHC.Generics (Generic)
data EpochState = MkEpochState {esAcnt :: MAlonzo.Code.Ledger.Conway.Foreign.PParams.Acnt, esSs :: MAlonzo.Code.Ledger.Conway.Foreign.Rewards.Snapshots, esLs :: MAlonzo.Code.Ledger.Conway.Foreign.Ledger.LState, esEs :: MAlonzo.Code.Ledger.Conway.Foreign.Enact.EnactState, esFut :: MAlonzo.Code.Ledger.Conway.Foreign.Ratify.RatifyState}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.Epoch._.EpochState
d_EpochState_10 = ()
-- Ledger.Conway.Foreign.Epoch._.EpochStateFromConf
d_EpochStateFromConf_14 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_EpochStateFromConf_14
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateFromConf_4882
-- Ledger.Conway.Foreign.Epoch._.EpochStateToConf
d_EpochStateToConf_16 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_EpochStateToConf_16
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateToConf_4898
-- Ledger.Conway.Foreign.Epoch._.HasCast-EpochState
d_HasCast'45'EpochState_18 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_18
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'EpochState_4878
-- Ledger.Conway.Foreign.Epoch._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_20 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_20
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'NewEpochState_4880
-- Ledger.Conway.Foreign.Epoch._.NewEpochState
d_NewEpochState_22 = ()
-- Ledger.Conway.Foreign.Epoch._.NewEpochStateFromConf
d_NewEpochStateFromConf_26 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateFromConf_26
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_NewEpochStateFromConf_4916
-- Ledger.Conway.Foreign.Epoch._.NewEpochStateToConf
d_NewEpochStateToConf_28 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateToConf_28
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_NewEpochStateToConf_4934
-- Ledger.Conway.Foreign.Epoch._.EpochState.acnt
d_acnt_34 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4826 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_34 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_4838 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.EpochState.es
d_es_36 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4826 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
d_es_36 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4844 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.EpochState.fut
d_fut_38 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4826 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924
d_fut_38 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_4846 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.EpochState.ls
d_ls_40 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4826 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2736
d_ls_40 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_4842 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.EpochState.ss
d_ss_42 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4826 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132
d_ss_42 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_4840 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.bcur
d_bcur_46 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_46 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bcur_4868 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.bprev
d_bprev_48 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_48 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bprev_4866 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.epochState
d_epochState_50 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4850 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4826
d_epochState_50 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4870
      (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.lastEpoch
d_lastEpoch_52 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4850 ->
  Integer
d_lastEpoch_52 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_4864
      (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.pd
d_pd_54 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_54 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_pd_4874 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.ru
d_ru_56 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4850 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038
d_ru_56 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_4872 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__62 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__64 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState
d_EpochState_68 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochStateOf
d_EpochStateOf_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_EpochStateOf_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Governance-Update
d_Governance'45'Update_74 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasCast-EpochState
d_HasCast'45'EpochState_80 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_80
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'EpochState_3474
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_82 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_82
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'NewEpochState_3476
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1584
d_HasCertState'45'NewEpochState_84
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCertState'45'NewEpochState_3466
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasDReps-EpochState
d_HasDReps'45'EpochState_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1486
d_HasDReps'45'EpochState_86
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDReps'45'EpochState_3368
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1486
d_HasDReps'45'NewEpochState_88
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDReps'45'NewEpochState_3468
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasDeposits-EpochState
d_HasDeposits'45'EpochState_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1228
d_HasDeposits'45'EpochState_90
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDeposits'45'EpochState_3366
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1236
d_HasEnactState'45'EpochState_92
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3364
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1236
d_HasEnactState'45'NewEpochState_94
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'NewEpochState_3458
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEpochState
d_HasEpochState_96 a0 a1 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342
d_HasEpochState'45'NewEpochState_100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3456
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasGovState-EpochState
d_HasGovState'45'EpochState_102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1878
d_HasGovState'45'EpochState_102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasGovState'45'EpochState_3362
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1878
d_HasGovState'45'NewEpochState_104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasGovState'45'NewEpochState_3464
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLState-EpochState
d_HasLState'45'EpochState_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3012
d_HasLState'45'EpochState_106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3360
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLState-NewEpochState
d_HasLState'45'NewEpochState_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_3012
d_HasLState'45'NewEpochState_108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'NewEpochState_3462
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLastEpoch
d_HasLastEpoch_110 a0 a1 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438
d_HasLastEpoch'45'NewEpochState_114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3454
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasNewEpochState
d_HasNewEpochState_116 a0 a1 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasPParams-EpochState
d_HasPParams'45'EpochState_120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EpochState_120
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPParams'45'EpochState_3376
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'NewEpochState_122
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPParams'45'NewEpochState_3472
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasPState-EpochState
d_HasPState'45'EpochState_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1544
d_HasPState'45'EpochState_124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPState'45'EpochState_3380
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1944
d_HasRatifyState'45'EpochState_126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRatifyState'45'EpochState_3378
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasReserves-EpochState
d_HasReserves'45'EpochState_128 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'EpochState_128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasReserves'45'EpochState_3374
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasRetiring-EpochState
d_HasRetiring'45'EpochState_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1296
d_HasRetiring'45'EpochState_130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRetiring'45'EpochState_3382
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasRewards-EpochState
d_HasRewards'45'EpochState_132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
d_HasRewards'45'EpochState_132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRewards'45'EpochState_3370
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1312
d_HasRewards'45'NewEpochState_134
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRewards'45'NewEpochState_3470
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasSnapshots-EpochState
d_HasSnapshots'45'EpochState_136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3156
d_HasSnapshots'45'EpochState_136
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasSnapshots'45'EpochState_3358
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasTreasury-EpochState
d_HasTreasury'45'EpochState_138 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'EpochState_138
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasTreasury'45'EpochState_3372
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_140 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_Hastreasury'45'NewEpochState_140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_Hastreasury'45'NewEpochState_3460
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.LastEpochOf
d_LastEpochOf_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438 ->
  AgdaAny -> Integer
d_LastEpochOf_142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3446
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState
d_NewEpochState_150 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochStateOf
d_NewEpochStateOf_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
d_NewEpochStateOf_154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3426
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.PoolDelegatedStake
d_PoolDelegatedStake_156 :: ()
d_PoolDelegatedStake_156 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAP-Update
d_Post'45'POOLREAP'45'Update_158 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAP-Update
d_Pre'45'POOLREAP'45'Update_164 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.applyRUpd
d_applyRUpd_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_applyRUpd_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_applyRUpd_3618
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStake_3674
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.calculatePoolDelegatedStakeForVoting
d_calculatePoolDelegatedStakeForVoting_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStakeForVoting_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStakeForVoting_3748
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.calculateVDelegDelegatedStake
d_calculateVDelegDelegatedStake_176 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculateVDelegDelegatedStake_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculateVDelegDelegatedStake_3746
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.createRUpd
d_createRUpd_178 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038
d_createRUpd_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3486
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.getOrphans
d_getOrphans_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getOrphans_3826
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.getStakeCred
d_getStakeCred_182 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getStakeCred_3482
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.mkStakeDistrs
d_mkStakeDistrs_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3074 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1880
d_mkStakeDistrs_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3762
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.stakeFromGADeposits
d_stakeFromGADeposits_186 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_186
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_stakeFromGADeposits_3686
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.toRewardAddress
d_toRewardAddress_188 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_toRewardAddress_188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_toRewardAddress_3478
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.acnt
d_acnt_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3326 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.es
d_es_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
d_es_208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3332 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.fut
d_fut_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924
d_fut_210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3334 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.ls
d_ls_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992
d_ls_212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3330 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.ss
d_ss_214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3132
d_ss_214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3328 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Governance-Update.govSt'
d_govSt''_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3866
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Governance-Update.removedGovActions
d_removedGovActions_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_removedGovActions_3864
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.govSt'
d_govSt''_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_224
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_govSt''_3910
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.orphans
d_orphans_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_226
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_orphans_3896
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.removed'
d_removed''_228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_228
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_removed''_3898
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.removedGovActions
d_removedGovActions_230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_removedGovActions_3900
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.tmpGovSt
d_tmpGovSt_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_tmpGovSt_3892
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.updates
d_updates_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1924 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858
d_updates_234
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3914
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEpochState.EpochStateOf
d_EpochStateOf_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3342 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_EpochStateOf_238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3350
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLastEpoch.LastEpochOf
d_LastEpochOf_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3438 ->
  AgdaAny -> Integer
d_LastEpochOf_242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3446
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386
d_NewEpochStateOf_246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3426
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.bcur
d_bcur_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3404 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.bprev
d_bprev_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3402
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.epochState
d_epochState_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314
d_epochState_254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3406
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.lastEpoch
d_lastEpoch_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  Integer
d_lastEpoch_256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3400
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.pd
d_pd_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3410 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.ru
d_ru_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3038
d_ru_260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3408 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAP-Update.acnt''
d_acnt''''_264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3976 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt''''_264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt''''_3984
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAP-Update.dState''
d_dState''''_266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3976 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444
d_dState''''_266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_dState''''_3982
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.acnt''
d_acnt''''_270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt''''_270
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_acnt''''_4026
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.dState''
d_dState''''_272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444
d_dState''''_272 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_dState''''_4018
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v2 v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.govActionReturns
d_govActionReturns_274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_274 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_govActionReturns_4006
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.payout
d_payout_276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_276 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_payout_4014
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.refunds
d_refunds_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_refunds_4016
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v2 v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.totWithdrawals
d_totWithdrawals_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  Integer
d_totWithdrawals_280 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_totWithdrawals_4022
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.unclaimed
d_unclaimed_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  Integer
d_unclaimed_282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_unclaimed_4020
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v2 v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.updates
d_updates_284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3976
d_updates_284
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_4028
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAP-Update.gState'
d_gState''_288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3916 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1476
d_gState''_288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_gState''_3926
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAP-Update.pState'
d_pState''_290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3916 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
d_pState''_290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pState''_3924
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAP-Update.utxoSt'
d_utxoSt''_292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3916 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt''_292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_utxoSt''_3928
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAPUpdate.gState'
d_gState''_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1476
d_gState''_296
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_gState''_3972
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAPUpdate.pState'
d_pState''_298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
d_pState''_298 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_pState''_3970
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAPUpdate.updates
d_updates_300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3916
d_updates_300
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3974
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAPUpdate.utxoSt'
d_utxoSt''_302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2992 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3858 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt''_302 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_utxoSt''_3968
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v2
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.VDelegDelegatedStake.activeDReps
d_activeDReps_306 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_306 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_activeDReps_3730
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v3
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.VDelegDelegatedStake.activeVDelegs
d_activeVDelegs_308 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_1084]
d_activeVDelegs_308 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_activeVDelegs_3732
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v3
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.VDelegDelegatedStake.calculate
d_calculate_310 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculate_310
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculate_3740
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.VDelegDelegatedStake.stakePerCredential
d_stakePerCredential_312 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1444 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_stakePerCredential_312 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_stakePerCredential_3734
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v1 v2 v4 v5
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Computational-EPOCH
d_Computational'45'EPOCH_316 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_316
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_Computational'45'EPOCH_3448
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_318 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_318
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_Computational'45'NEWEPOCH_3598
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-complete
d_EPOCH'45'complete_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4030 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_320 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-complete'
d_EPOCH'45'complete''_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4030 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_322 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-deterministic
d_EPOCH'45'deterministic_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4030 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4030 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_324 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-total
d_EPOCH'45'total_326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_326
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total_3300
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-total'
d_EPOCH'45'total''_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_328
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_3442
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_330 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__4056 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_330 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NEWEPOCH-total
d_NEWEPOCH'45'total_332 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_332
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_3476
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.Show-EPOCH
d_Show'45'EPOCH_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3314 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'EPOCH_340 ~v0 ~v1 ~v2 = du_Show'45'EPOCH_340
du_Show'45'EPOCH_340 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'EPOCH_340
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_EPOCH_4054 v3 v4 v13
                -> case coe v13 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                       -> coe
                            seq (coe v15)
                            (coe
                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                               ("EPOCH\n" :: Data.Text.Text)
                               (coe
                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                  ("SNAP" :: Data.Text.Text) (" POOLREAP" :: Data.Text.Text)))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Epoch.HsTy-EpochState
d_HsTy'45'EpochState_348 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'EpochState_348 = erased
-- Ledger.Conway.Foreign.Epoch.Conv-EpochState
d_Conv'45'EpochState_350 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'EpochState_350
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4848 v1 v2 v3 v4 v5
                -> coe
                     C_MkEpochState_4147
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.PParams.C_MkAcnt_11249
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4231
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3142
                                          (coe v2))))))
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3142
                                          (coe v2))))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3142
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3144
                                          (coe v2))))))
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3144
                                          (coe v2))))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3144
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3146
                                          (coe v2))))))
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3146
                                          (coe v2))))))
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3146
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3148
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Ledger.C_MkLState_2827
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.Utxo.C_MkUTxOState_1155
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSTimelock_18)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2542
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2544
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                              (coe
                                 MAlonzo.Code.Class.Convertible.Core.d_to_20
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2546
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2548
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
                                 (coe v3))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                           () erased
                           (MAlonzo.Code.Class.Convertible.Core.d_to_20
                              (coe
                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                    (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2746
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkCertState_28431
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1614
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3)))))))
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1616
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3)))))))
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1618
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1620
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1468
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3)))))))
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1470
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3)))))))
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1472
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1632
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3)))))))
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1634
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                 (coe
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                    (coe
                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                       (coe
                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1636
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                (coe v3))))))))))
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
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                          (let v6
                                                 = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                           coe
                                             (let v7
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                        (coe v6) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                            (coe v7))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                         (coe v7))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1220
                                 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1222
                                 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1224
                                 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1226
                                 (coe v4))))
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1228
                                    (coe v4))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12441
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
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                             (let v6
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v7
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                           (coe v6) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                               (coe v7))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                            (coe v7))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1220
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                       (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1222
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                       (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1224
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                       (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1226
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                       (coe v5)))))
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1228
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                          (coe v5)))))))
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1934
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1936
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEpochState_4147 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4848
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_198 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.PParams.C_MkAcnt_11249
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.PParams.C_MkAcnt_11249 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_198
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3150 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4231
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                         (coe v7)))))
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                         (coe v7)))))
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                         (coe v7))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                         (coe v8)))))
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                         (coe v8)))))
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                         (coe v8))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                         (coe v9)))))
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                         (coe v9)))))
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                         (coe v9))))))
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4231 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3150
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v15
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                   coe
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                 (coe v16))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v12))))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v15
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                   coe
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                 (coe v16))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v13))))
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
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v15
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                   coe
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                 (coe v16))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v12))))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v15
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                   coe
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                 (coe v16))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v13))))
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
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                              MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v15
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                   coe
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                 (coe v16))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v12))))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v15
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                   coe
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                 (coe v16))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v13))))
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
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2750 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Ledger.C_MkLState_2827
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Utxo.C_MkUTxOState_1155
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
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSTimelock_18)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2542
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2544
                                                (coe v7))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                (coe
                                                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2546
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2548
                                                (coe v7)))
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkCertState_28431
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1614
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                               (coe v9))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1616
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                               (coe v9))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1618
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1620
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1468
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                               (coe v9))))))
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1470
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                               (coe v9))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1472
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1632
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                               (coe v9))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1634
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                         (coe
                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1636
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                               (coe v9))))))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Ledger.C_MkLState_2827 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2750
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2550 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Utxo.C_MkUTxOState_1155
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
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSTimelock_18)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v11))))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Utxo.C_MkUTxOState_1155 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2550
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                     () erased () erased
                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v15 ->
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
                                                                             (\ v16 ->
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
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSTimelock_18)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v11))))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v15
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1244
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2718
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                              (coe v15)))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v15 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84))
                                                                          (coe
                                                                             (\ v16 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v15))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v13))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1654 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkCertState_28431
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1614
                                                                              (coe v11)))))
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1616
                                                                              (coe v11)))))
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1618
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                     (coe
                                                                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                        (coe
                                                                           MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                           (coe
                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1620
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1468
                                                                              (coe v12)))))
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1470
                                                                              (coe v12)))))
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
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1472
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1632
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
                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1634
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1636
                                                                              (coe v13))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkCertState_28431 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1654
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1622 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
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
                                                                                                v16))))
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
                                                                                                v17))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1622
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v19
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                        coe
                                                                                          (let v20
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                     (coe
                                                                                                        v19) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                         (coe
                                                                                                            v20))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                      (coe
                                                                                                         v20))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v19 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v20 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v19))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v19
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                        coe
                                                                                          (let v20
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                     (coe
                                                                                                        v19) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                         (coe
                                                                                                            v20))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                      (coe
                                                                                                         v20))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v19 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v20 ->
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
                                                                                                  v19))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v19
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                        coe
                                                                                          (let v20
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                     (coe
                                                                                                        v19) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                         (coe
                                                                                                            v20))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                      (coe
                                                                                                         v20))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v19 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v20 ->
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
                                                                                                  v19))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v17))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v19
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1244
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2718
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                   (coe
                                                                                                      v19)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v19 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84))
                                                                                               (coe
                                                                                                  (\ v20 ->
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
                                                                                                  v19))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1474 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
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
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1474
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
                                                                                          (\ v18 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                               (coe
                                                                                                  (\ v19 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v18))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v15))))
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
                                                                                          (\ v18 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                               (coe
                                                                                                  (\ v19 ->
                                                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                  ()
                                                                                                  erased
                                                                                                  ()
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                  v18))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v16))))
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
                                                                                          (\ v18 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                               (coe
                                                                                                  (\ v19 ->
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
                                                                                                  v18))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1638 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955
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
                                                                                                v15))))
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
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1638
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v18
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                        coe
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                     (coe
                                                                                                        v18) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                         (coe
                                                                                                            v19))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                      (coe
                                                                                                         v19))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v18 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v19 ->
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
                                                                                                  v18))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v18
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                        coe
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                     (coe
                                                                                                        v18) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                         (coe
                                                                                                            v19))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                      (coe
                                                                                                         v19))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v18 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                               (coe
                                                                                                  (\ v19 ->
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
                                                                                                  v18))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (let v18
                                                                                              = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1244
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2718
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                   (coe
                                                                                                      v18)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                          MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                          () erased
                                                                                          () erased
                                                                                          (\ v18 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84))
                                                                                               (coe
                                                                                                  (\ v19 ->
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
                                                                                                  v18))
                                                                                          (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1230 v7 v8 v9 v10 v11
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
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                            (let v12
                                                                   = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                             coe
                                                               (let v13
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                          (coe v12) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                              (coe v13))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                           (coe v13))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                (coe
                                                   (\ v12 ->
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
                                                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v8)))
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
                                                   (\ v12 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v9)))
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
                                                   (\ v12 ->
                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                (coe v10)))
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
                                                   (coe v11))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v7 v8 v9 v10 v11
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1230
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
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                          coe
                                                            (let v13
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                       (coe v12) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                           (coe v13))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                        (coe v13))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                             (coe
                                                (\ v12 ->
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
                                                   MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'Maybe_16
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                             (coe
                                                (\ v12 ->
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
                                                (\ v12 ->
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
                                                v9))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                             (coe
                                                (\ v12 ->
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
                                                v10))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (let v12
                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                              coe
                                                (let v13
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                           (coe v12) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1398
                                                            (coe v13)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                               (coe v13))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                            (coe v13))))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (\ v12 ->
                                                   coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                     (coe
                                                        (\ v13 ->
                                                           MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        v12))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                   (coe v11))))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Class.Convertible.Core.d_from_22
                        (coe
                           MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1938 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12441
                                          (coe
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
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                               (let v10
                                                                      = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                coe
                                                                  (let v11
                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                             (coe v10) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                 (coe v11))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1220
                                                      (coe v7))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1222
                                                      (coe v7))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1224
                                                      (coe v7))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1226
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
                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1228
                                                         (coe v7))))))
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                                v8))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12441 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1938
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1230 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                                                 (let v16
                                                                                        = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                  coe
                                                                                    (let v17
                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                               (coe
                                                                                                  v16) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                   (coe
                                                                                                      v17))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                (coe
                                                                                                   v17))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                     (coe v11)))
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
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                     (coe v12)))
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
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                     (coe v13)))
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
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                             (coe
                                                                                MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                     (coe v14)))
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
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1230
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
                                                                              (let v16
                                                                                     = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                               coe
                                                                                 (let v17
                                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                            (coe
                                                                                               v16) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                (coe
                                                                                                   v17))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                             (coe
                                                                                                v17))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                  (coe
                                                                     (\ v16 ->
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
                                                                     v11))
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
                                                                     (\ v16 ->
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
                                                                     v12))
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
                                                                     (\ v16 ->
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
                                                                     v13))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                                                  (coe
                                                                     (\ v16 ->
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
                                                                     v14))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (let v16
                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                   coe
                                                                     (let v17
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                (coe v16) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1398
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                    (coe v17))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                 (coe v17))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                     MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                     () erased () erased
                                                                     (\ v16 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                                          (coe
                                                                             (\ v17 ->
                                                                                MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                             () erased () erased
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                             v16))
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Epoch.epoch-step
epochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_4145 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_EpochState_4145
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
epochStep = coe d_epoch'45'step_352
d_epoch'45'step_352 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_4145 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_EpochState_4145
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
d_epoch'45'step_352 ~v0 v1 v2 = du_epoch'45'step_352 v1 v2
du_epoch'45'step_352 ::
  T_EpochState_4145 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_EpochState_4145
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
du_epoch'45'step_352 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_3442
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateFromConf_4882)
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                    (coe
                       MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                       (coe
                          (\ v2 ->
                             case coe v2 of
                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4848 v3 v4 v5 v6 v7
                                 -> coe
                                      C_MkEpochState_4147
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.PParams.C_MkAcnt_11249
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
                                            (coe v3)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4231
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3142
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
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3142
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
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3142
                                                           (coe v4)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3144
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
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3144
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
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3144
                                                           (coe v4)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3146
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
                                                           MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3146
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
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3146
                                                           (coe v4)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3148
                                            (coe v4)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.Ledger.C_MkLState_2827
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.Utxo.C_MkUTxOState_1155
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
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSTimelock_18)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2542
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
                                                           (coe v5))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2544
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
                                                  (coe v5)))
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                               (coe
                                                  MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                  (coe
                                                     MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2546
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
                                                           (coe v5))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2548
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2744
                                                  (coe v5))))
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
                                                     MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                            (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2746
                                               (coe v5)))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkCertState_28431
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181
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
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1614
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5)))))))
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1616
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5)))))))
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1618
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5)))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                  (coe
                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1620
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5))))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147
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
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1468
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5)))))))
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
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1470
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5)))))))
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1472
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5))))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1632
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5)))))))
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1634
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5)))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                  (coe
                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                     (coe
                                                        MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                        (coe
                                                           MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1636
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2748
                                                                 (coe v5))))))))))
                                      (coe
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
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                           (let v8
                                                                  = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                            coe
                                                              (let v9
                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                         (coe v8) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                             (coe v9))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1220
                                                  (coe v6))))
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
                                                  (\ v8 ->
                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                       (coe
                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                          (coe
                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1222
                                                  (coe v6))))
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
                                                  (\ v8 ->
                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                       (coe
                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                          (coe
                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1224
                                                  (coe v6))))
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
                                                  (\ v8 ->
                                                     MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                       (coe
                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                          (coe
                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1226
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
                                                        MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1228
                                                     (coe v6))))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12441
                                         (coe
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
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.du_Conv'45'HSMap_102
                                                              (let v8
                                                                     = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                               coe
                                                                 (let v9
                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                            (coe v8) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                (coe v9))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1220
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                                        (coe v7)))))
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
                                                     (\ v8 ->
                                                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                          (coe
                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1222
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                                        (coe v7)))))
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
                                                     (\ v8 ->
                                                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                          (coe
                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1224
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                                        (coe v7)))))
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
                                                     (\ v8 ->
                                                        MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                          (coe
                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1226
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                                        (coe v7)))))
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1228
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1932
                                                           (coe v7)))))))
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
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                               (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1934
                                                  (coe v7))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1936
                                            (coe v7)))
                               _ -> MAlonzo.RTE.mazUnreachableError))
                       (coe
                          (\ v2 ->
                             case coe v2 of
                               C_MkEpochState_4147 v3 v4 v5 v6 v7
                                 -> coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4848
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_198 v9 v10
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.PParams.C_MkAcnt_11249
                                                           (coe v9) (coe v10)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.PParams.C_MkAcnt_11249 v9 v10
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_198
                                                           (coe v9) (coe v10)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v3)
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3150 v9 v10 v11 v12
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4231
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                                          (coe v9)))))
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                                          (coe v9)))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                                          (coe v9))))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                                          (coe v10)))))
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                                          (coe v10)))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                                          (coe v10))))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3082
                                                                          (coe v11)))))
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3084
                                                                          (coe v11)))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3086
                                                                          (coe v11))))))
                                                           (coe v12)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4231 v9 v10 v11 v12
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3150
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                                            v14))))
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
                                                                                            v15))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (let v17
                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                  (coe
                                                                                                     v18))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v14))))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (let v17
                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                  (coe
                                                                                                     v18))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v15))))
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
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                           (coe
                                                                                              (\ v18 ->
                                                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                              ()
                                                                                              erased
                                                                                              ()
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v9)
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                                            v14))))
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
                                                                                            v15))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (let v17
                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                  (coe
                                                                                                     v18))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v14))))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (let v17
                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                  (coe
                                                                                                     v18))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v15))))
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
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                           (coe
                                                                                              (\ v18 ->
                                                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                              ()
                                                                                              erased
                                                                                              ()
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v10)
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435
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
                                                                                            v14))))
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
                                                                                            v15))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3088
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (let v17
                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                  (coe
                                                                                                     v18))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v14))))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (let v17
                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                  (coe
                                                                                                     v18))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v15))))
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
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                           (coe
                                                                                              (\ v18 ->
                                                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                              ()
                                                                                              erased
                                                                                              ()
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v11)
                                                           (coe v12)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v4)
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2750 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Ledger.C_MkLState_2827
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Utxo.C_MkUTxOState_1155
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
                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSTimelock_18)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2542
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2544
                                                                 (coe v9))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                 (coe
                                                                    MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                    (coe
                                                                       MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                       (coe
                                                                          MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2546
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2548
                                                                 (coe v9)))
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
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                                              v10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkCertState_28431
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181
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
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1614
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                                                (coe v11))))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1616
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                                                (coe v11))))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1618
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                                                (coe v11))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                    (coe
                                                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                       (coe
                                                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1620
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
                                                                                (coe v11)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147
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
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1468
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                                                (coe v11))))))
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
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1470
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                                                (coe v11))))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1472
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650
                                                                                (coe v11)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1632
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                                                (coe v11))))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1634
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                                                (coe v11))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                    (coe
                                                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                       (coe
                                                                          MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                          (coe
                                                                             MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1636
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652
                                                                                (coe v11))))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Ledger.C_MkLState_2827 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2750
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2550 v13 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Utxo.C_MkUTxOState_1155
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
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSTimelock_18)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v13))))
                                                                                (coe v14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v15))))
                                                                                (coe v16)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Utxo.C_MkUTxOState_1155 v13 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2550
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                      () erased ()
                                                                                      erased
                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
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
                                                                                              (\ v18 ->
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
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSTimelock_18)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Transaction.d_Conv'45'HSPlutusScript_22))))))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                              ()
                                                                                              erased
                                                                                              ()
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v13))))
                                                                                (coe v14)
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (let v17
                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                    coe
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1244
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2718
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                               (coe
                                                                                                  v17)))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v17 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84))
                                                                                           (coe
                                                                                              (\ v18 ->
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
                                                                                              v17))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v15))))
                                                                                (coe v16)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v9)
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
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                                              v10)
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1654 v13 v14 v15
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkCertState_28431
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1614
                                                                                               (coe
                                                                                                  v13)))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1616
                                                                                               (coe
                                                                                                  v13)))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1618
                                                                                               (coe
                                                                                                  v13)))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1620
                                                                                               (coe
                                                                                                  v13))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1468
                                                                                               (coe
                                                                                                  v14)))))
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1470
                                                                                               (coe
                                                                                                  v14)))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1472
                                                                                               (coe
                                                                                                  v14))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1632
                                                                                               (coe
                                                                                                  v15)))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1634
                                                                                               (coe
                                                                                                  v15)))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1636
                                                                                               (coe
                                                                                                  v15))))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkCertState_28431 v13 v14 v15
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1654
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1622 v17 v18 v19 v20
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v17))))
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
                                                                                                                 v18))))
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
                                                                                                                 v19))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v20))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13181 v17 v18 v19 v20
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1622
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (let v21
                                                                                                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                         coe
                                                                                                           (let v22
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                                      (coe
                                                                                                                         v21) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                          (coe
                                                                                                                             v22))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                       (coe
                                                                                                                          v22))))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (\ v21 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                (coe
                                                                                                                   (\ v22 ->
                                                                                                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.Gov.Core.d_Conv'45'VDeleg_32)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                   ()
                                                                                                                   erased
                                                                                                                   ()
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                   v21))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v17))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (let v21
                                                                                                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                         coe
                                                                                                           (let v22
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                                      (coe
                                                                                                                         v21) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                          (coe
                                                                                                                             v22))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                       (coe
                                                                                                                          v22))))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (\ v21 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                (coe
                                                                                                                   (\ v22 ->
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
                                                                                                                   v21))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v18))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (let v21
                                                                                                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                         coe
                                                                                                           (let v22
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                                      (coe
                                                                                                                         v21) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                          (coe
                                                                                                                             v22))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                       (coe
                                                                                                                          v22))))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (\ v21 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                (coe
                                                                                                                   (\ v22 ->
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
                                                                                                                   v21))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v19))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (let v21
                                                                                                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                         coe
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1244
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2718
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                                    (coe
                                                                                                                       v21)))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (\ v21 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84))
                                                                                                                (coe
                                                                                                                   (\ v22 ->
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
                                                                                                                   v21))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v20))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                   v13)
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1474 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v17))))
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v18))))
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
                                                                                                                 v19))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6147 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1474
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
                                                                                                           (\ v20 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                (coe
                                                                                                                   (\ v21 ->
                                                                                                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                   ()
                                                                                                                   erased
                                                                                                                   ()
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                   v20))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v17))))
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
                                                                                                           (\ v20 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                (coe
                                                                                                                   (\ v21 ->
                                                                                                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_80)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                                                   ()
                                                                                                                   erased
                                                                                                                   ()
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                                                   v20))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v18))))
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
                                                                                                           (\ v20 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                                                                (coe
                                                                                                                   (\ v21 ->
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
                                                                                                                   v20))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v19))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                   v14)
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1638 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955
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
                                                                                                                 v17))))
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
                                                                                                                 v18))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_56
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.Convertible.Instances.du_Convertible'45'List_22
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v19))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24955 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1638
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (let v20
                                                                                                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                         coe
                                                                                                           (let v21
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                                      (coe
                                                                                                                         v20) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                          (coe
                                                                                                                             v21))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                       (coe
                                                                                                                          v21))))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (\ v20 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                (coe
                                                                                                                   (\ v21 ->
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
                                                                                                                   v20))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v17))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (let v20
                                                                                                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                         coe
                                                                                                           (let v21
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                                      (coe
                                                                                                                         v20) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                          (coe
                                                                                                                             v21))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                       (coe
                                                                                                                          v21))))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (\ v20 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222))
                                                                                                                (coe
                                                                                                                   (\ v21 ->
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
                                                                                                                   v20))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v18))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (let v20
                                                                                                               = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                         coe
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1244
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2718
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                                    (coe
                                                                                                                       v20)))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (\ v20 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_84))
                                                                                                                (coe
                                                                                                                   (\ v21 ->
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
                                                                                                                   v20))
                                                                                                           (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                                              (coe
                                                                                                                 v19))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                   v15)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v11)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v5)
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1230 v9 v10 v11 v12 v13
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                                                    = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                              coe
                                                                                (let v15
                                                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                           (coe
                                                                                              v14) in
                                                                                 coe
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                               (coe
                                                                                                  v15))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                            (coe
                                                                                               v15))))))
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
                                                                 (coe v9)))
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
                                                                 (coe v10)))
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
                                                                 (coe v11)))
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
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                                                 (coe
                                                                    (\ v14 ->
                                                                       MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                         (coe
                                                                            MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                 (coe v12)))
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
                                                                    (coe v13))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v9 v10 v11 v12 v13
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1230
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
                                                                          (let v14
                                                                                 = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                           coe
                                                                             (let v15
                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                        (coe v14) in
                                                                              coe
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                            (coe
                                                                                               v15))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                         (coe
                                                                                            v15))))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                              (coe
                                                                 (\ v14 ->
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
                                                                 v9))
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
                                                                 (\ v14 ->
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
                                                                 v10))
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
                                                                 (\ v14 ->
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
                                                                 v11))
                                                           (coe
                                                              MAlonzo.Code.Data.Product.Base.du_map_128
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                                              (coe
                                                                 (\ v14 ->
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
                                                                 v12))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (let v14
                                                                     = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                               coe
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                            (coe v14) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1398
                                                                             (coe v15)))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                (coe v15))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                             (coe v15))))))
                                                              (coe
                                                                 MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                 MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                 () erased () erased
                                                                 (\ v14 ->
                                                                    coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                                      (coe
                                                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
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
                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                    (coe v13))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v6)
                                      (coe
                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                         (coe
                                            MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1938 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12441
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                                                (let v12
                                                                                       = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                 coe
                                                                                   (let v13
                                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                              (coe
                                                                                                 v12) in
                                                                                    coe
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                  (coe
                                                                                                     v13))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                               (coe
                                                                                                  v13))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'Credential_222)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_Conv'45'Rational_28))))
                                                                    (coe
                                                                       (\ v12 ->
                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                            (coe
                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1220
                                                                       (coe v9))))
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
                                                                       (\ v12 ->
                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                            (coe
                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1222
                                                                       (coe v9))))
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
                                                                       (\ v12 ->
                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                            (coe
                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1224
                                                                       (coe v9))))
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
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                                                    (coe
                                                                       (\ v12 ->
                                                                          MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                            (coe
                                                                               MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1226
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
                                                                             MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1228
                                                                          (coe v9))))))
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
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                                                 v10))
                                                           (coe v11)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12441 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1938
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1230 v13 v14 v15 v16 v17
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161
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
                                                                                                  (let v18
                                                                                                         = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                   coe
                                                                                                     (let v19
                                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                                (coe
                                                                                                                   v18) in
                                                                                                      coe
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                    (coe
                                                                                                                       v19))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
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
                                                                                      (coe v13)))
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
                                                                                         (\ v18 ->
                                                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                      (coe v14)))
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
                                                                                         (\ v18 ->
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
                                                                                   () erased ()
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                      (coe
                                                                                         (\ v18 ->
                                                                                            MAlonzo.Code.Class.Convertible.Core.d_to_20
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                      (coe v16)))
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
                                                                                            v17))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Enact.C_MkEnactState_161 v13 v14 v15 v16 v17
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1230
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
                                                                                               (let v18
                                                                                                      = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                                coe
                                                                                                  (let v19
                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                             (coe
                                                                                                                v18) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                                 (coe
                                                                                                                    v19))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
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
                                                                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                      () erased ()
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                      v13))
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
                                                                                      (\ v18 ->
                                                                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                      () erased ()
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                      v14))
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
                                                                                      (\ v18 ->
                                                                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                      () erased ()
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                      v15))
                                                                                (coe
                                                                                   MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.PParams.d_Conv'45'PParams_26))
                                                                                   (coe
                                                                                      (\ v18 ->
                                                                                         MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                      () erased ()
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                      v16))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (let v18
                                                                                          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
                                                                                    coe
                                                                                      (let v19
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_742
                                                                                                 (coe
                                                                                                    v18) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1398
                                                                                                  (coe
                                                                                                     v19)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                     (coe
                                                                                                        v19))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1434
                                                                                                  (coe
                                                                                                     v19))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                                      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                                      () erased ()
                                                                                      erased
                                                                                      (\ v18 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Foreign.Address.d_Conv'45'RewardAddress_234))
                                                                                           (coe
                                                                                              (\ v19 ->
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
                                                                                              v18))
                                                                                      (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_54
                                                                                         (coe
                                                                                            v17))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v9)
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
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_898)))
                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                                    (coe v10))))
                                                           (coe v11)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v7)
                               _ -> MAlonzo.RTE.mazUnreachableError)))
                    v0))
              (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
           -> coe
                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_Success_116
                (coe
                   MAlonzo.Code.Class.Convertible.Core.d_to_20
                   (coe
                      MAlonzo.Code.Class.Convertible.Foreign.du_Convertible'45'Pair_6
                      (coe d_Conv'45'EpochState_350)
                      (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateToConf_4898)
                         (coe v3))
                      (coe
                         MAlonzo.Code.Class.Show.Core.d_show_16 (coe du_Show'45'EPOCH_340)
                         v4)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Foreign.Epoch.EpochState
d_EpochState_4145 = ()
type T_EpochState_4145 = EpochState
pattern C_MkEpochState_4147 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_MkEpochState_4147 ::
  MAlonzo.Code.Ledger.Conway.Foreign.PParams.T_Acnt_11247 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Rewards.T_Snapshots_4229 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Ledger.T_LState_2825 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Ratify.T_RatifyState_12439 ->
  T_EpochState_4145
check_MkEpochState_4147 = MkEpochState
cover_EpochState_4145 :: EpochState -> ()
cover_EpochState_4145 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
