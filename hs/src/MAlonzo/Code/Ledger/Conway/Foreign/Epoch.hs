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
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Cert
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
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateFromConf_4876
-- Ledger.Conway.Foreign.Epoch._.EpochStateToConf
d_EpochStateToConf_16 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_EpochStateToConf_16
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateToConf_4892
-- Ledger.Conway.Foreign.Epoch._.HasCast-EpochState
d_HasCast'45'EpochState_18 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_18
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'EpochState_4872
-- Ledger.Conway.Foreign.Epoch._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_20 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_20
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'NewEpochState_4874
-- Ledger.Conway.Foreign.Epoch._.NewEpochState
d_NewEpochState_22 = ()
-- Ledger.Conway.Foreign.Epoch._.NewEpochStateFromConf
d_NewEpochStateFromConf_26 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateFromConf_26
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_NewEpochStateFromConf_4910
-- Ledger.Conway.Foreign.Epoch._.NewEpochStateToConf
d_NewEpochStateToConf_28 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateToConf_28
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_NewEpochStateToConf_4928
-- Ledger.Conway.Foreign.Epoch._.EpochState.acnt
d_acnt_34 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4820 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_34 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_4832 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.EpochState.es
d_es_36 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4820 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_es_36 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4838 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.EpochState.fut
d_fut_38 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4820 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900
d_fut_38 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_4840 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.EpochState.ls
d_ls_40 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4820 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2714
d_ls_40 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_4836 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.EpochState.ss
d_ss_42 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4820 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108
d_ss_42 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_4834 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.bcur
d_bcur_46 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_46 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bcur_4862 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.bprev
d_bprev_48 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_48 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bprev_4860 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.epochState
d_epochState_50 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4844 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4820
d_epochState_50 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4864
      (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.lastEpoch
d_lastEpoch_52 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4844 ->
  Integer
d_lastEpoch_52 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_4858
      (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.pd
d_pd_54 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_54 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_pd_4868 (coe v0)
-- Ledger.Conway.Foreign.Epoch._.NewEpochState.ru
d_ru_56 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4844 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014
d_ru_56 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_4866 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__62 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__64 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState
d_EpochState_68 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochStateOf
d_EpochStateOf_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_EpochStateOf_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Governance-Update
d_Governance'45'Update_74 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasCast-EpochState
d_HasCast'45'EpochState_80 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_80
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'EpochState_3444
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_82 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_82
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'NewEpochState_3446
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_84 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1552
d_HasCertState'45'NewEpochState_84
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCertState'45'NewEpochState_3436
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasDReps-EpochState
d_HasDReps'45'EpochState_86 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1454
d_HasDReps'45'EpochState_86
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDReps'45'EpochState_3340
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1454
d_HasDReps'45'NewEpochState_88
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDReps'45'NewEpochState_3438
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasDeposits-EpochState
d_HasDeposits'45'EpochState_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1196
d_HasDeposits'45'EpochState_90
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDeposits'45'EpochState_3338
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_92 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
d_HasEnactState'45'EpochState_92
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3336
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_94 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1204
d_HasEnactState'45'NewEpochState_94
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'NewEpochState_3428
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEpochState
d_HasEpochState_96 a0 a1 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314
d_HasEpochState'45'NewEpochState_100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3426
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasGovState-EpochState
d_HasGovState'45'EpochState_102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1854
d_HasGovState'45'EpochState_102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasGovState'45'EpochState_3334
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1854
d_HasGovState'45'NewEpochState_104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasGovState'45'NewEpochState_3434
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLState-EpochState
d_HasLState'45'EpochState_106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2988
d_HasLState'45'EpochState_106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3332
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLState-NewEpochState
d_HasLState'45'NewEpochState_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2988
d_HasLState'45'NewEpochState_108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'NewEpochState_3432
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLastEpoch
d_HasLastEpoch_110 a0 a1 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408
d_HasLastEpoch'45'NewEpochState_114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3424
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasNewEpochState
d_HasNewEpochState_116 a0 a1 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasPParams-EpochState
d_HasPParams'45'EpochState_120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'EpochState_120
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPParams'45'EpochState_3346
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'NewEpochState_122
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPParams'45'NewEpochState_3442
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasPState-EpochState
d_HasPState'45'EpochState_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1512
d_HasPState'45'EpochState_124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPState'45'EpochState_3350
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1920
d_HasRatifyState'45'EpochState_126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRatifyState'45'EpochState_3348
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasReserves-EpochState
d_HasReserves'45'EpochState_128 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'EpochState_128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasReserves'45'EpochState_3344
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasRetiring-EpochState
d_HasRetiring'45'EpochState_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1264
d_HasRetiring'45'EpochState_130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRetiring'45'EpochState_3352
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1280
d_HasRewards'45'NewEpochState_132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRewards'45'NewEpochState_3440
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasSnapshots-EpochState
d_HasSnapshots'45'EpochState_134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3132
d_HasSnapshots'45'EpochState_134
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasSnapshots'45'EpochState_3330
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasTreasury-EpochState
d_HasTreasury'45'EpochState_136 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'EpochState_136
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasTreasury'45'EpochState_3342
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_138 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_Hastreasury'45'NewEpochState_138
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_Hastreasury'45'NewEpochState_3430
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.LastEpochOf
d_LastEpochOf_140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408 ->
  AgdaAny -> Integer
d_LastEpochOf_140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3416
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState
d_NewEpochState_148 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochStateOf
d_NewEpochStateOf_152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3388 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
d_NewEpochStateOf_152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3396
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.PoolDelegatedStake
d_PoolDelegatedStake_154 :: ()
d_PoolDelegatedStake_154 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAP-Update
d_Post'45'POOLREAP'45'Update_156 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAP-Update
d_Pre'45'POOLREAP'45'Update_162 = ()
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.applyRUpd
d_applyRUpd_168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_applyRUpd_168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_applyRUpd_3588
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStake_3644
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.calculatePoolDelegatedStakeForVoting
d_calculatePoolDelegatedStakeForVoting_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStakeForVoting_172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStakeForVoting_3718
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.calculateVDelegDelegatedStake
d_calculateVDelegDelegatedStake_174 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculateVDelegDelegatedStake_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculateVDelegDelegatedStake_3716
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.createRUpd
d_createRUpd_176 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014
d_createRUpd_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3456
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.getOrphans
d_getOrphans_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getOrphans_3796
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.getStakeCred
d_getStakeCred_180 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getStakeCred_3452
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.mkStakeDistrs
d_mkStakeDistrs_182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3050 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1856
d_mkStakeDistrs_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3732
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.stakeFromGADeposits
d_stakeFromGADeposits_184 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_stakeFromGADeposits_3656
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.toRewardAddress
d_toRewardAddress_186 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_toRewardAddress_186
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_toRewardAddress_3448
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.acnt
d_acnt_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt_204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3298 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.es
d_es_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_es_206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3304 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.fut
d_fut_208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900
d_fut_208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3306 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.ls
d_ls_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968
d_ls_210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3302 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EpochState.ss
d_ss_212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3108
d_ss_212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3300 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Governance-Update.govSt'
d_govSt''_216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3836
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Governance-Update.removedGovActions
d_removedGovActions_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_removedGovActions_3834
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.govSt'
d_govSt''_222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_222
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_govSt''_3880
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.orphans
d_orphans_224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_224
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_orphans_3866
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.removed'
d_removed''_226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_226
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_removed''_3868
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.removedGovActions
d_removedGovActions_228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_228
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_removedGovActions_3870
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.tmpGovSt
d_tmpGovSt_230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_tmpGovSt_3862
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.GovernanceUpdate.updates
d_updates_232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1900 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828
d_updates_232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3884
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasEpochState.EpochStateOf
d_EpochStateOf_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3314 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_EpochStateOf_236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3322
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasLastEpoch.LastEpochOf
d_LastEpochOf_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3408 ->
  AgdaAny -> Integer
d_LastEpochOf_240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3416
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3388 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356
d_NewEpochStateOf_244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3396
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.bcur
d_bcur_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3374 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.bprev
d_bprev_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3372
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.epochState
d_epochState_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286
d_epochState_252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3376
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.lastEpoch
d_lastEpoch_254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  Integer
d_lastEpoch_254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3370
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.pd
d_pd_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3380 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NewEpochState.ru
d_ru_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_3014
d_ru_258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3378 (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAP-Update.acnt''
d_acnt''''_262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3946 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt''''_262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt''''_3954
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAP-Update.dState''
d_dState''''_264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412
d_dState''''_264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_dState''''_3952
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.acnt''
d_acnt''''_268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188
d_acnt''''_268
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_acnt''''_3996
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.dState''
d_dState''''_270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412
d_dState''''_270 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_dState''''_3988
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v2 v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.govActionReturns
d_govActionReturns_272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_272 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_govActionReturns_3976
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.payout
d_payout_274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_274 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_payout_3984
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.refunds
d_refunds_276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_276 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_refunds_3986
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v2 v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.totWithdrawals
d_totWithdrawals_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  Integer
d_totWithdrawals_278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_totWithdrawals_3992
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.unclaimed
d_unclaimed_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  Integer
d_unclaimed_280 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_unclaimed_3990
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v2 v4
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Post-POOLREAPUpdate.updates
d_updates_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3946
d_updates_282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3998
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAP-Update.gState'
d_gState''_286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444
d_gState''_286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_gState''_3896
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAP-Update.pState'
d_pState''_288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_pState''_288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pState''_3894
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAP-Update.utxoSt'
d_utxoSt''_290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_utxoSt''_290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_utxoSt''_3898
      (coe v0)
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAPUpdate.gState'
d_gState''_294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444
d_gState''_294
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_gState''_3942
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAPUpdate.pState'
d_pState''_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_pState''_296 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_pState''_3940
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAPUpdate.updates
d_updates_298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3886
d_updates_298
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3944
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Pre-POOLREAPUpdate.utxoSt'
d_utxoSt''_300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2968 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508
d_utxoSt''_300 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_utxoSt''_3938
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v2
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.VDelegDelegatedStake.activeDReps
d_activeDReps_304 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_304 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_activeDReps_3700
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v3
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.VDelegDelegatedStake.activeVDelegs
d_activeVDelegs_306 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_1052]
d_activeVDelegs_306 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_activeVDelegs_3702
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v0 v3
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.VDelegDelegatedStake.calculate
d_calculate_308 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculate_308
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculate_3710
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.VDelegDelegatedStake.stakePerCredential
d_stakePerCredential_310 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2508 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1412 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_stakePerCredential_310 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_stakePerCredential_3704
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
      v1 v2 v4 v5
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Computational-EPOCH
d_Computational'45'EPOCH_314 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_314
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_Computational'45'EPOCH_3418
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_316 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_316
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_Computational'45'NEWEPOCH_3568
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-complete
d_EPOCH'45'complete_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4000 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_318 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-complete'
d_EPOCH'45'complete''_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4000 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_320 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-deterministic
d_EPOCH'45'deterministic_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4000 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4000 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_322 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-total
d_EPOCH'45'total_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_324
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total_3270
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.EPOCH-total'
d_EPOCH'45'total''_326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_326
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_3412
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_328 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__4026 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_328 = erased
-- Ledger.Conway.Foreign.Epoch.EpochSpec._.NEWEPOCH-total
d_NEWEPOCH'45'total_330 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3356 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_330
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_3446
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
         (coe
            MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
-- Ledger.Conway.Foreign.Epoch.Show-EPOCH
d_Show'45'EPOCH_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'EPOCH_338 ~v0 ~v1 ~v2 = du_Show'45'EPOCH_338
du_Show'45'EPOCH_338 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'EPOCH_338
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_EPOCH_4024 v3 v4 v13
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
d_HsTy'45'EpochState_346 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsTy'45'EpochState_346 = erased
-- Ledger.Conway.Foreign.Epoch.Conv-EpochState
d_Conv'45'EpochState_348 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Conv'45'EpochState_348
  = coe
      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4842 v1 v2 v3 v4 v5
                -> coe
                     C_MkEpochState_4137
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.PParams.C_MkAcnt_11249
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4191
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3118
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3118
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3118
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3120
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3120
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3120
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3122
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3122
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3122
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3124
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2520
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2522
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2524
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2724
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.Cert.C_MkCertState_713
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1590
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1592
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1594
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1596
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1436
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1438
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1440
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1608
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1610
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1612
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                        (coe v6) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                            (coe v7))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1188
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1190
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1192
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1196
                                    (coe v4))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12361
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
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                           (coe v6) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                               (coe v7))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1188
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1190
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1192
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1196
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                              (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1910
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1912
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEpochState_4137 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4842
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3126 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4191
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
                                                         (coe v9))))))
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4191 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3126
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064 v12 v13 v14
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064
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
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064 v12 v13 v14
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064
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
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064 v12 v13 v14
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064
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
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                (coe v15) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2728 v7 v8 v9
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2520
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2522
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2524
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.Cert.C_MkCertState_713
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1590
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1592
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1594
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1596
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1436
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1438
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1440
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1608
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1610
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1612
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
                                                               (coe v9))))))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Ledger.C_MkLState_2827 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2728
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2526 v11 v12 v13 v14
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2526
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
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1212
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
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
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72))
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1630 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.Cert.C_MkCertState_713
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1590
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1592
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1594
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1596
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1436
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1438
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
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1440
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1608
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1610
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1612
                                                                              (coe v13))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Cert.C_MkCertState_713 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1630
                                                               (coe
                                                                  MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                  (coe
                                                                     MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1598 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1598
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
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                     (coe
                                                                                                        v19) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                         (coe
                                                                                                            v20))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                     (coe
                                                                                                        v19) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                         (coe
                                                                                                            v20))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                     (coe
                                                                                                        v19) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                         (coe
                                                                                                            v20))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1212
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
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
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72))
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1442 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1442
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
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1614 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1614
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
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                     (coe
                                                                                                        v18) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                         (coe
                                                                                                            v19))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                     (coe
                                                                                                        v18) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                         (coe
                                                                                                            v19))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1212
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
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
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72))
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1198 v7 v8 v9 v10 v11
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
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                          (coe v12) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                              (coe v13))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1198
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
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                       (coe v12) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                           (coe v13))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                           (coe v12) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
                                                            (coe v13)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                               (coe v13))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1914 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12361
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
                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                             (coe v10) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                 (coe v11))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1188
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1190
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1192
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1196
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                                v8))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12361 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1914
                                          (coe
                                             MAlonzo.Code.Class.Convertible.Core.d_from_22
                                             (coe
                                                MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1198 v11 v12 v13 v14 v15
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
                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                               (coe
                                                                                                  v16) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                   (coe
                                                                                                      v17))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1198
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
                                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                            (coe
                                                                                               v16) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                (coe
                                                                                                   v17))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                (coe v16) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                    (coe v17))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_66
                                                   (coe v8))))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.Epoch.epoch-step
epochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_4135 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_EpochState_4135
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
epochStep = coe d_epoch'45'step_350
d_epoch'45'step_350 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_4135 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_EpochState_4135
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
d_epoch'45'step_350 ~v0 v1 v2 = du_epoch'45'step_350 v1 v2
du_epoch'45'step_350 ::
  T_EpochState_4135 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_HSComputationResult_110
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_EpochState_4135
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
du_epoch'45'step_350 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_3412
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe
                    MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateFromConf_4876)
                 (coe
                    MAlonzo.Code.Class.Convertible.Core.d_from_22
                    (coe
                       MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                       (coe
                          (\ v2 ->
                             case coe v2 of
                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4842 v3 v4 v5 v6 v7
                                 -> coe
                                      C_MkEpochState_4137
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.PParams.C_MkAcnt_11249
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
                                            (coe v3)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4191
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3118
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3118
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
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3118
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3120
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3120
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
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3120
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3122
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3122
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
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3122
                                                           (coe v4)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3124
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
                                                           (coe v5))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2520
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
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
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2522
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
                                                           (coe v5))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2524
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2722
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
                                                     MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                            (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2724
                                               (coe v5)))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.Cert.C_MkCertState_713
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1590
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1592
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1594
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1596
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
                                                                 (coe v5))))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089
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
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1436
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1438
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1440
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
                                                                 (coe v5))))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1608
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1610
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1612
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2726
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
                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                         (coe v8) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                             (coe v9))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1188
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1190
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1192
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1196
                                                     (coe v6))))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12361
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
                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                            (coe v8) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                (coe v9))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1188
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1190
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1192
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1196
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1908
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
                                                        MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                               (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1910
                                                  (coe v7))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1912
                                            (coe v7)))
                               _ -> MAlonzo.RTE.mazUnreachableError))
                       (coe
                          (\ v2 ->
                             case coe v2 of
                               C_MkEpochState_4137 v3 v4 v5 v6 v7
                                 -> coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4842
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3126 v9 v10 v11 v12
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4191
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_3058
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_3060
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_3062
                                                                          (coe v11))))))
                                                           (coe v12)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshots_4191 v9 v10 v11 v12
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3126
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064 v14 v15 v16
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064
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
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064 v14 v15 v16
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064
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
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064 v14 v15 v16
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Rewards.C_MkSnapshot_1435 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3064
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
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                 (coe
                                                                                                    v17) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                     (coe
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2728 v9 v10 v11
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2518
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2520
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2522
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2524
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
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                                              v10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.Cert.C_MkCertState_713
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1590
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1592
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1594
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
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
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1596
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
                                                                                (coe v11)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089
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
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1436
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
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
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1438
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1440
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626
                                                                                (coe v11)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1608
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1610
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
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
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1612
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628
                                                                                (coe v11))))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Ledger.C_MkLState_2827 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2728
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2526 v13 v14 v15 v16
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
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
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
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2526
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
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1212
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
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
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72))
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
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                                              v10)
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1630 v13 v14 v15
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.Cert.C_MkCertState_713
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1590
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1592
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1594
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1596
                                                                                               (coe
                                                                                                  v13))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1436
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1438
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
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1440
                                                                                               (coe
                                                                                                  v14))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1608
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1610
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvNat_10)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1612
                                                                                               (coe
                                                                                                  v15))))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.Cert.C_MkCertState_713 v13 v14 v15
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1630
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1598 v17 v18 v19 v20
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
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
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkDState_13083 v17 v18 v19 v20
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1598
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
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                                      (coe
                                                                                                                         v21) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                                          (coe
                                                                                                                             v22))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                                      (coe
                                                                                                                         v21) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                                          (coe
                                                                                                                             v22))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                                      (coe
                                                                                                                         v21) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                                          (coe
                                                                                                                             v22))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1212
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
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
                                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72))
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
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1442 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkPState_6089 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1442
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
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'StakePoolParams_68)))
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
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1614 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72)
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
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.Certs.C_MkGState_24713 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1614
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
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                                      (coe
                                                                                                                         v20) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                                          (coe
                                                                                                                             v21))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                                      (coe
                                                                                                                         v20) in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                                          (coe
                                                                                                                             v21))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1212
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2654
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
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
                                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.Certs.d_Conv'45'DepositPurpose_72))
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1198 v9 v10 v11 v12 v13
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
                                                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                           (coe
                                                                                              v14) in
                                                                                 coe
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                               (coe
                                                                                                  v15))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1198
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
                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                        (coe v14) in
                                                                              coe
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                            (coe
                                                                                               v15))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                            (coe v14) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
                                                                             (coe v15)))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                (coe v15))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1914 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12361
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
                                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                              (coe
                                                                                                 v12) in
                                                                                    coe
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                  (coe
                                                                                                     v13))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1188
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1190
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1192
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1194
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1196
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
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
                                                                 v10))
                                                           (coe v11)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.Ratify.C_MkRatifyState_12361 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1914
                                                           (coe
                                                              MAlonzo.Code.Class.Convertible.Core.d_from_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Convertible.Core.C_constructor_24
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1198 v13 v14 v15 v16 v17
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
                                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                                (coe
                                                                                                                   v18) in
                                                                                                      coe
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                                    (coe
                                                                                                                       v19))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1198
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
                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                             (coe
                                                                                                                v18) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                                 (coe
                                                                                                                    v19))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                                                                                                 (coe
                                                                                                    v18) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1366
                                                                                                  (coe
                                                                                                     v19)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
                                                                                                     (coe
                                                                                                        v19))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1400
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
                                                                          MAlonzo.Code.Ledger.Conway.Foreign.Gov.d_Conv'45'GovActionState_908)))
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
                      (coe d_Conv'45'EpochState_348)
                      (coe MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_iConvString_12))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateToConf_4892)
                         (coe v3))
                      (coe
                         MAlonzo.Code.Class.Show.Core.d_show_16 (coe du_Show'45'EPOCH_338)
                         v4)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Foreign.Epoch.EpochState
d_EpochState_4135 = ()
type T_EpochState_4135 = EpochState
pattern C_MkEpochState_4137 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_MkEpochState_4137 ::
  MAlonzo.Code.Ledger.Conway.Foreign.PParams.T_Acnt_11247 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Rewards.T_Snapshots_4189 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Ledger.T_LState_2825 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Ratify.T_RatifyState_12359 ->
  T_EpochState_4135
check_MkEpochState_4137 = MkEpochState
cover_EpochState_4135 :: EpochState -> ()
cover_EpochState_4135 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
