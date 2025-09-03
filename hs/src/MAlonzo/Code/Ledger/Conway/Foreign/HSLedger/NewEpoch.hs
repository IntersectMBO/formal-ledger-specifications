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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.NewEpoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty

import GHC.Generics (Generic)
data NewEpochState = MkNewEpochState {lastEpoch :: Integer, epochState :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.EpochState, ru :: (Maybe MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.HsRewardUpdate)}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__14 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EpochState
d_EpochState_18 = ()
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.HasCast-EpochState
d_HasCast'45'EpochState_22 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_22
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'EpochState_2600
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_24 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_24
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'NewEpochState_2602
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.NewEpochState
d_NewEpochState_32 = ()
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.applyRUpd
d_applyRUpd_36 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560
d_applyRUpd_36
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_applyRUpd_2604
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.getStakeCred
d_getStakeCred_38 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_38
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getStakeCred_2964
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.mkStakeDistrs
d_mkStakeDistrs_40 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2668 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2352
d_mkStakeDistrs_40
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3200
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.toRwdAddr
d_toRwdAddr_42 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_toRwdAddr_42
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_toRwdAddr_2960
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EpochState.acnt
d_acnt_60 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162
d_acnt_60 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2572 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EpochState.es
d_es_62 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_es_62 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2578 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EpochState.fut
d_fut_64 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2392
d_fut_64 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EpochState.ls
d_ls_66 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338
d_ls_66 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EpochState.ss
d_ss_68 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726
d_ss_68 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.NewEpochState.epochState
d_epochState_72 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2584 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560
d_epochState_72 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2594
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.NewEpochState.lastEpoch
d_lastEpoch_74 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2584 ->
  Integer
d_lastEpoch_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2592
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.NewEpochState.ru
d_ru_76 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2584 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2632
d_ru_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.Computational-EPOCH
d_Computational'45'EPOCH_80 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_80
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'EPOCH_2628
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_82 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_82
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'NEWEPOCH_2778
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EPOCH-complete
d_EPOCH'45'complete_84 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2706 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_84 = erased
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EPOCH-complete'
d_EPOCH'45'complete''_86 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2706 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_86 = erased
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EPOCH-deterministic
d_EPOCH'45'deterministic_88 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2706 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_88 = erased
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EPOCH-total
d_EPOCH'45'total_90 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_90
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_EPOCH'45'total_2578
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.EPOCH-total'
d_EPOCH'45'total''_92 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_92
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_EPOCH'45'total''_2622
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_94 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2584 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2584 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2798 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_94 = erased
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.NEWEPOCH-total
d_NEWEPOCH'45'total_96 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2584 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_96
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_NEWEPOCH'45'total_2656
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.SNAP-complete
d_SNAP'45'complete_98 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2326 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_98 = erased
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.SNAP-deterministic
d_SNAP'45'deterministic_100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2326 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2326 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic_100 = erased
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.SNAP-total
d_SNAP'45'total_102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2338 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_102
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_SNAP'45'total_2510
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.es
d_es_104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_es_104 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_es_2570
      v0
-- Ledger.Conway.Foreign.HSLedger.NewEpoch._.govSt'
d_govSt''_106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2560 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_106 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_govSt''_2572
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0
-- Ledger.Conway.Foreign.HSLedger.NewEpoch.HsTy-NewEpochState
d_HsTy'45'NewEpochState_108 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'NewEpochState_108 = erased
-- Ledger.Conway.Foreign.HSLedger.NewEpoch.Conv-NewEpochState
d_Conv'45'NewEpochState_110 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'NewEpochState_110
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_constructor_2598 v1 v2 v3
                -> coe
                     C_MkNewEpochState_211 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.C_MkEpochState_217
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2572 (coe v2)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2572
                                 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2736
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2736
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2736
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2738
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2738
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2738
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574
                                                (coe v2))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2742
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2574 (coe v2))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2206
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                       (coe v2))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2208
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2210
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Class.Functor.Core.du_fmap_22
                              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
                              () erased
                              (MAlonzo.Code.Foreign.Convertible.d_to_18
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
                              (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2348
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                    (coe v2))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1348
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2))))))))
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2))))))))
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1352
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1354
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1228
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2))))))))
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
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1230
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1366
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2))))))))
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1368
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1370
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2576
                                                      (coe v2)))))))))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2578
                                       (coe v2)))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2578
                                       (coe v2)))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2578
                                       (coe v2)))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2578
                                       (coe v2)))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2578
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2580
                                             (coe v2))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2580
                                             (coe v2))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2580
                                             (coe v2))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2580
                                             (coe v2))))))
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
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2580
                                                (coe v2))))))))
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
                                 (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2402
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2580
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2404
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2580
                                 (coe v2)))))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.d_Conv'45'RewardUpdate_132))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkNewEpochState_211 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_constructor_2598
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2582 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.C_MkEpochState_217
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
                                                (coe v5))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
                                                (coe v5)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2736
                                                               (coe v6))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2736
                                                               (coe v6))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2736
                                                               (coe v6)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2738
                                                               (coe v6))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2738
                                                               (coe v6))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2738
                                                               (coe v6)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740
                                                               (coe v6))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740
                                                               (coe v6))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2740
                                                               (coe v6)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2742
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
                                                               (coe v7))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
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
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2208
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
                                                               (coe v7))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2346
                                                      (coe v7))))
                                             (coe
                                                MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                () erased () erased
                                                (MAlonzo.Code.Foreign.Convertible.d_to_18
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
                                                (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2348
                                                   (coe v7)))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1348
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7)))))))
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7)))))))
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1352
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1354
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1228
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7)))))))
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1230
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1366
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7)))))))
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1368
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7)))))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1370
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2350
                                                                     (coe v7))))))))))
                                          (coe
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                                                      (coe v8))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
                                                      (coe v8))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010
                                                      (coe v8))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1014
                                                         (coe v8))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                            (coe v9)))))
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
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2400
                                                               (coe v9)))))))
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
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2402
                                                      (coe v9))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2404
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.C_MkEpochState_217 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2582
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                                               (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575 v11 v12
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_172
                                                               (coe v11) (coe v12)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v5)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2744 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                                                              (coe v11)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                                                              (coe v11)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                                                              (coe v12)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                                                              (coe v12)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2676
                                                                              (coe v13)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2678
                                                                              (coe v13)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_poolParameters_2680
                                                                              (coe v13))))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_2993 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2744
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2682 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                                                             (coe
                                                                                                v16))))
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
                                                                                             (coe
                                                                                                v17))))
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
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2682
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                        (coe
                                                                                                           v19) in
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
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                        (coe
                                                                                                           v19) in
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
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v17)))
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
                                                                                          (coe
                                                                                             v18)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2682 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                                                             (coe
                                                                                                v16))))
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
                                                                                             (coe
                                                                                                v17))))
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
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2682
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                        (coe
                                                                                                           v19) in
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
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                        (coe
                                                                                                           v19) in
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
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v17)))
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
                                                                                          (coe
                                                                                             v18)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2682 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131
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
                                                                                             (coe
                                                                                                v16))))
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
                                                                                             (coe
                                                                                                v17))))
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
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v15 ->
                                                                           case coe v15 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_131 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2682
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                        (coe
                                                                                                           v19) in
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
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                        (coe
                                                                                                           v19) in
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
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v17)))
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
                                                                                          (coe
                                                                                             v18)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v6)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2352 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2206
                                                                     (coe v11))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2208
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2210
                                                                     (coe v11)))
                                                               (coe
                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Foreign.Convertible.d_to_18
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
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1348
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                                                    (coe v13))))))
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                                                    (coe v13))))))
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1352
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1354
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1228
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384
                                                                                    (coe v13))))))
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1230
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384
                                                                                    (coe v13)))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1366
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                                                    (coe v13))))))
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
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1368
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                                                    (coe v13))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1370
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386
                                                                                    (coe v13))))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2352
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                                    (coe v18)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2212
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (coe
                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                             ()
                                                                                             erased
                                                                                             ()
                                                                                             erased
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_100
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                      (coe
                                                                                                         v19)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v17)))
                                                                                    (coe v18)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                                                  MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92
                                                                  () erased () erased
                                                                  (MAlonzo.Code.Foreign.Convertible.d_from_20
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
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1388 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1348
                                                                                                   (coe
                                                                                                      v15)))))
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1350
                                                                                                   (coe
                                                                                                      v15)))))
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1352
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1354
                                                                                                   (coe
                                                                                                      v15))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1228
                                                                                                   (coe
                                                                                                      v16)))))
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1230
                                                                                                   (coe
                                                                                                      v16))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1366
                                                                                                   (coe
                                                                                                      v17)))))
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
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1368
                                                                                                   (coe
                                                                                                      v17)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1370
                                                                                                   (coe
                                                                                                      v17))))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_563 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1388
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1356 v19 v20 v21 v22
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863
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
                                                                                                                  (coe
                                                                                                                     v19))))
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
                                                                                                                  (coe
                                                                                                                     v20))))
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
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v22))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_11863 v19 v20 v21 v22
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1356
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v24
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v23) in
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
                                                                                                                                    v24))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                              (coe
                                                                                                                                 v24))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v24
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v23) in
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
                                                                                                                                    v24))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                              (coe
                                                                                                                                 v24))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v24
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v23) in
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
                                                                                                                                    v24))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                              (coe
                                                                                                                                 v24))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v21)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v23
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                           (coe
                                                                                                                              v23)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v22)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v15)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1232 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153
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
                                                                                                                  (coe
                                                                                                                     v19))))
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
                                                                                                                     v20))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6153 v19 v20
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1232
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
                                                                                                               (coe
                                                                                                                  v19)))
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
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1372 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749
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
                                                                                                                  (coe
                                                                                                                     v19))))
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
                                                                                                                  (coe
                                                                                                                     v20))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v21))))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          (coe
                                                                                             (\ v18 ->
                                                                                                case coe
                                                                                                       v18 of
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_23749 v19 v20 v21
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1372
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v23
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v22) in
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
                                                                                                                                    v23))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                              (coe
                                                                                                                                 v23))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v19)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (let v23
                                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                             (coe
                                                                                                                                v22) in
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
                                                                                                                                    v23))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                              (coe
                                                                                                                                 v23))))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v20)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                               (let v22
                                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                                coe
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1054
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                           (coe
                                                                                                                              v22)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                            (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                               (coe
                                                                                                                  v21)))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                       v17)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1016 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                                 (let v16
                                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                  coe
                                                                                    (let v17
                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                               (coe
                                                                                                  v16) in
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
                                                                                                      v17))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                (coe
                                                                                                   v17))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe v11)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe v14)))
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
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133 v11 v12 v13 v14 v15
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
                                                                              (let v16
                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                               coe
                                                                                 (let v17
                                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                            (coe
                                                                                               v16) in
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
                                                                                                   v17))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                             (coe
                                                                                                v17))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v11))
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
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v12))
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
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v13))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v14))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v17
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                   (coe v16) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                                                    (coe v17)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                       (coe v17))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                    (coe v17))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v15)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2406 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
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
                                                                                    (let v14
                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                     coe
                                                                                       (let v15
                                                                                              = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                  (coe
                                                                                                     v14) in
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
                                                                                                         v15))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                   (coe
                                                                                                      v15))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1006
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
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
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1008
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
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
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1010
                                                                           (coe v11))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                        (coe
                                                                           (\ v14 ->
                                                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1012
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1014
                                                                              (coe v11))))))
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
                                                                     v12))
                                                               (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_10473 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2406
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1016 v15 v16 v17 v18 v19
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
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
                                                                                                      (let v20
                                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                       coe
                                                                                                         (let v21
                                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                    (coe
                                                                                                                       v20) in
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
                                                                                                                           v21))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                     (coe
                                                                                                                        v21))))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
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
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
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
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             v17)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                       () erased ()
                                                                                       erased
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                          (coe
                                                                                             (\ v20 ->
                                                                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                          (coe
                                                                                             v18)))
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
                                                                                                v19))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_133 v15 v16 v17 v18 v19
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
                                                                                                   (let v20
                                                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                    coe
                                                                                                      (let v21
                                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                                 (coe
                                                                                                                    v20) in
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
                                                                                                                        v21))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                                  (coe
                                                                                                                     v21))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v15))
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
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v16))
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
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v17))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                               (coe
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                          () erased
                                                                                          () erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                          v18))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v20
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v21
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
                                                                                                        (coe
                                                                                                           v20) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_252
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                                                                         (coe
                                                                                                            v21)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                            (coe
                                                                                                               v21))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1328
                                                                                                         (coe
                                                                                                            v21))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v19)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
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
                                                                     (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                                        (coe v12))))
                                                               (coe v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.d_Conv'45'RewardUpdate_132))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch.newepoch-step
newEpochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_NewEpochState_209 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_NewEpochState_209
newEpochStep = coe d_newepoch'45'step_112
d_newepoch'45'step_112 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_NewEpochState_209 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_NewEpochState_209
d_newepoch'45'step_112 ~v0 = du_newepoch'45'step_112
du_newepoch'45'step_112 ::
  T_NewEpochState_209 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    T_NewEpochState_209
du_newepoch'45'step_112
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
         (coe d_Conv'45'NewEpochState_110)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_132
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_20)
               (coe d_Conv'45'NewEpochState_110))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'NEWEPOCH_2778
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_806
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Conway.Foreign.HSLedger.NewEpoch.NewEpochState
d_NewEpochState_209 = ()
type T_NewEpochState_209 = NewEpochState
pattern C_MkNewEpochState_211 a0 a1 a2 = MkNewEpochState a0 a1 a2
check_MkNewEpochState_211 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.T_EpochState_215 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    ()
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.T_HsRewardUpdate_110 ->
  T_NewEpochState_209
check_MkNewEpochState_211 = MkNewEpochState
cover_NewEpochState_209 :: NewEpochState -> ()
cover_NewEpochState_209 x
  = case x of
      MkNewEpochState _ _ _ -> ()
