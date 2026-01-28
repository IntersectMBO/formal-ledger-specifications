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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch where

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
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.Haskell.Pair
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact
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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
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
data EpochState = MkEpochState {esAcnt :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.Acnt, esSs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.Snapshots, esLs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.LState, esEs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.EnactState, esFut :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.RatifyState}
 deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Epoch._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__12 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__14 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState
d_EpochState_18 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochStateFromConf
d_EpochStateFromConf_22 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_EpochStateFromConf_22
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateFromConf_4818
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochStateToConf
d_EpochStateToConf_24 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_EpochStateToConf_24
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateToConf_4834
-- Ledger.Conway.Foreign.HSLedger.Epoch._.HasCast-EpochState
d_HasCast'45'EpochState_26 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_26
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'EpochState_4814
-- Ledger.Conway.Foreign.HSLedger.Epoch._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_28 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_28
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'NewEpochState_4816
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState
d_NewEpochState_36 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochStateFromConf
d_NewEpochStateFromConf_40 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateFromConf_40
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_NewEpochStateFromConf_4852
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochStateToConf
d_NewEpochStateToConf_42 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateToConf_42
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_NewEpochStateToConf_4870
-- Ledger.Conway.Foreign.HSLedger.Epoch._.PoolDelegatedStake
d_PoolDelegatedStake_44 :: ()
d_PoolDelegatedStake_44 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.applyRUpd
d_applyRUpd_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760
d_applyRUpd_46
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_applyRUpd_4890
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_48
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_calculatePoolDelegatedStake_4948
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.getOrphans
d_getOrphans_50 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_50
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getOrphans_3682
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.getStakeCred
d_getStakeCred_52 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getStakeCred_3338
-- Ledger.Conway.Foreign.HSLedger.Epoch._.mkStakeDistrs
d_mkStakeDistrs_54 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1796
d_mkStakeDistrs_54
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3618
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.toRewardAddress
d_toRewardAddress_56 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_toRewardAddress_56
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_toRewardAddress_3334
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.acnt
d_acnt_74 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_4772 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.es
d_es_76 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
d_es_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4778 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.fut
d_fut_78 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1840
d_fut_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_4780 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.ls
d_ls_80 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600
d_ls_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_4776 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.ss
d_ss_82 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002
d_ss_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_4774 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.bcur
d_bcur_86 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bcur_4804 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.bprev
d_bprev_88 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bprev_4802 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.epochState
d_epochState_90 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760
d_epochState_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4806
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.lastEpoch
d_lastEpoch_92 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  Integer
d_lastEpoch_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_4800
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.pd
d_pd_94 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_pd_4810 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.ru
d_ru_96 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908
d_ru_96 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_4808 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Computational-EPOCH
d_Computational'45'EPOCH_100 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_100
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'EPOCH_2972
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_102 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_102
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'NEWEPOCH_3122
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-complete
d_EPOCH'45'complete_104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__5004 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_104 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-complete'
d_EPOCH'45'complete''_106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__5004 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_106 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-deterministic
d_EPOCH'45'deterministic_108 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__5004 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__5004 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_108 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-total
d_EPOCH'45'total_110 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_110
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_EPOCH'45'total_2922
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-total'
d_EPOCH'45'total''_112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_112
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_EPOCH'45'total''_2966
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_114 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__5128 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_114 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NEWEPOCH-total
d_NEWEPOCH'45'total_116 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_116
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_NEWEPOCH'45'total_3000
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.SNAP-complete
d_SNAP'45'complete_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2598 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_118 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.SNAP-deterministic
d_SNAP'45'deterministic_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2598 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2598 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic_120 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.SNAP-total
d_SNAP'45'total_122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2600 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_122
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_SNAP'45'total_2854
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.es
d_es_124 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
d_es_124 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_es_2914
      v0
-- Ledger.Conway.Foreign.HSLedger.Epoch._.govSt'
d_govSt''_126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4760 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_126 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_govSt''_2916
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__132 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__134 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState
d_EpochState_138 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochStateOf
d_EpochStateOf_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172
d_EpochStateOf_142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3208
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Governance-Update
d_Governance'45'Update_144 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasCast-EpochState
d_HasCast'45'EpochState_150 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'EpochState_3330
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_152 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'NewEpochState_3332
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1492
d_HasCertState'45'NewEpochState_154
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCertState'45'NewEpochState_3322
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasDReps-EpochState
d_HasDReps'45'EpochState_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244
d_HasDReps'45'EpochState_156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDReps'45'EpochState_3226
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244
d_HasDReps'45'NewEpochState_158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDReps'45'NewEpochState_3324
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasDeposits-EpochState
d_HasDeposits'45'EpochState_160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1140
d_HasDeposits'45'EpochState_160
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDeposits'45'EpochState_3224
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1148
d_HasEnactState'45'EpochState_162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3222
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1148
d_HasEnactState'45'NewEpochState_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'NewEpochState_3314
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEpochState
d_HasEpochState_166 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3200
d_HasEpochState'45'NewEpochState_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3312
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasGovState-EpochState
d_HasGovState'45'EpochState_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1794
d_HasGovState'45'EpochState_172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasGovState'45'EpochState_3220
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_1794
d_HasGovState'45'NewEpochState_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasGovState'45'NewEpochState_3320
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLState-EpochState
d_HasLState'45'EpochState_176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2852
d_HasLState'45'EpochState_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3218
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLState-NewEpochState
d_HasLState'45'NewEpochState_178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2852
d_HasLState'45'NewEpochState_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'NewEpochState_3318
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLastEpoch
d_HasLastEpoch_180 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3294
d_HasLastEpoch'45'NewEpochState_184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3310
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasNewEpochState
d_HasNewEpochState_186 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasPParams-EpochState
d_HasPParams'45'EpochState_190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'EpochState_190
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPParams'45'EpochState_3232
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'NewEpochState_192
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPParams'45'NewEpochState_3328
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasPState-EpochState
d_HasPState'45'EpochState_194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452
d_HasPState'45'EpochState_194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPState'45'EpochState_3236
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_1860
d_HasRatifyState'45'EpochState_196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRatifyState'45'EpochState_3234
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasReserves-EpochState
d_HasReserves'45'EpochState_198 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'EpochState_198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasReserves'45'EpochState_3230
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasRetiring-EpochState
d_HasRetiring'45'EpochState_200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1208
d_HasRetiring'45'EpochState_200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRetiring'45'EpochState_3238
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224
d_HasRewards'45'NewEpochState_202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRewards'45'NewEpochState_3326
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasSnapshots-EpochState
d_HasSnapshots'45'EpochState_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3026
d_HasSnapshots'45'EpochState_204
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasSnapshots'45'EpochState_3216
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasTreasury-EpochState
d_HasTreasury'45'EpochState_206 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'EpochState_206
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasTreasury'45'EpochState_3228
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_208 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_Hastreasury'45'NewEpochState_208
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_Hastreasury'45'NewEpochState_3316
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.LastEpochOf
d_LastEpochOf_210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3294 ->
  AgdaAny -> Integer
d_LastEpochOf_210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState
d_NewEpochState_218 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochStateOf
d_NewEpochStateOf_222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3274 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242
d_NewEpochStateOf_222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3282
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.PoolDelegatedStake
d_PoolDelegatedStake_224 :: ()
d_PoolDelegatedStake_224 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAP-Update
d_Post'45'POOLREAP'45'Update_226 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAP-Update
d_Pre'45'POOLREAP'45'Update_232 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.applyRUpd
d_applyRUpd_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172
d_applyRUpd_238
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_applyRUpd_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStake_3530
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.calculatePoolDelegatedStakeForVoting
d_calculatePoolDelegatedStakeForVoting_242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStakeForVoting_242
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStakeForVoting_3604
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.calculateVDelegDelegatedStake
d_calculateVDelegDelegatedStake_244 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculateVDelegDelegatedStake_244
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculateVDelegDelegatedStake_3602
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.createRUpd
d_createRUpd_246 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908
d_createRUpd_246
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3342
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.getOrphans
d_getOrphans_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_248
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getOrphans_3682
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.getStakeCred
d_getStakeCred_250 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_250
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getStakeCred_3338
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.mkStakeDistrs
d_mkStakeDistrs_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2944 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_1796
d_mkStakeDistrs_252
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3618
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.stakeFromGADeposits
d_stakeFromGADeposits_254 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_254
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_stakeFromGADeposits_3542
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.toRewardAddress
d_toRewardAddress_256 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_toRewardAddress_256
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_toRewardAddress_3334
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.acnt
d_acnt_274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt_274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3184 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.es
d_es_276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
d_es_276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.fut
d_fut_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1840
d_fut_278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3192 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.ls
d_ls_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832
d_ls_280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3188 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.ss
d_ss_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3002
d_ss_282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3186 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Governance-Update.govSt'
d_govSt''_286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Governance-Update.removedGovActions
d_removedGovActions_288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_removedGovActions_3720
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.govSt'
d_govSt''_292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1840 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_292
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_govSt''_3766
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.orphans
d_orphans_294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1840 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_294
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_orphans_3752
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.removed'
d_removed''_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1840 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_296
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_removed''_3754
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.removedGovActions
d_removedGovActions_298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1840 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_298
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_removedGovActions_3756
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.tmpGovSt
d_tmpGovSt_300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1840 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_300
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_tmpGovSt_3748
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.updates
d_updates_302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_1840 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714
d_updates_302
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3770
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEpochState.EpochStateOf
d_EpochStateOf_306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172
d_EpochStateOf_306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3208
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLastEpoch.LastEpochOf
d_LastEpochOf_310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3294 ->
  AgdaAny -> Integer
d_LastEpochOf_310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3274 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242
d_NewEpochStateOf_314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3282
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.bcur
d_bcur_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3260 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.bprev
d_bprev_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3258
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.epochState
d_epochState_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172
d_epochState_322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3262
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.lastEpoch
d_lastEpoch_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  Integer
d_lastEpoch_324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3256
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.pd
d_pd_326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3266 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.ru
d_ru_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2908
d_ru_328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3264 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAP-Update.acnt''
d_acnt''''_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3832 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt''''_332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt''''_3840
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAP-Update.dState''
d_dState''''_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_dState''''_334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_dState''''_3838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.acnt''
d_acnt''''_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170
d_acnt''''_338
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_acnt''''_3882
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.dState''
d_dState''''_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_dState''''_340 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_dState''''_3874
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.govActionReturns
d_govActionReturns_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_342 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_govActionReturns_3862
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.payout
d_payout_344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_344 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_payout_3870
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.refunds
d_refunds_346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_346 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_refunds_3872
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.totWithdrawals
d_totWithdrawals_348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  Integer
d_totWithdrawals_348 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_totWithdrawals_3878
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.unclaimed
d_unclaimed_350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  Integer
d_unclaimed_350 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_unclaimed_3876
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.updates
d_updates_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3832
d_updates_352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3884
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAP-Update.gState'
d_gState''_356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3772 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384
d_gState''_356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_gState''_3782
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAP-Update.pState'
d_pState''_358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3772 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState''_358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pState''_3780
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAP-Update.utxoSt'
d_utxoSt''_360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3772 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_utxoSt''_360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_utxoSt''_3784
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAPUpdate.gState'
d_gState''_364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384
d_gState''_364
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_gState''_3828
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAPUpdate.pState'
d_pState''_366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState''_366 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_pState''_3826
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAPUpdate.updates
d_updates_368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3772
d_updates_368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3830
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAPUpdate.utxoSt'
d_utxoSt''_370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2832 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3714 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_utxoSt''_370 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_utxoSt''_3824
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v2
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.VDelegDelegatedStake.activeDReps
d_activeDReps_374 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_374 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_activeDReps_3586
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v3
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.VDelegDelegatedStake.activeVDelegs
d_activeVDelegs_376 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_942]
d_activeVDelegs_376 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_activeVDelegs_3588
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v3
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.VDelegDelegatedStake.calculate
d_calculate_378 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculate_378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculate_3596
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.VDelegDelegatedStake.stakePerCredential
d_stakePerCredential_380 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_stakePerCredential_380 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_stakePerCredential_3590
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v1 v2 v4 v5
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Computational-EPOCH
d_Computational'45'EPOCH_384 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_384
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_Computational'45'EPOCH_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_386 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_386
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_Computational'45'NEWEPOCH_3452
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-complete
d_EPOCH'45'complete_388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3886 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_388 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-complete'
d_EPOCH'45'complete''_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3886 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_390 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-deterministic
d_EPOCH'45'deterministic_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3886 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_392 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-total
d_EPOCH'45'total_394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_394
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total_3154
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-total'
d_EPOCH'45'total''_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_396
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_3296
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_398 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3912 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_398 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NEWEPOCH-total
d_NEWEPOCH'45'total_400 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_3330
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.Show-EPOCH
d_Show'45'EPOCH_408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3172 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'EPOCH_408 ~v0 ~v1 ~v2 = du_Show'45'EPOCH_408
du_Show'45'EPOCH_408 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'EPOCH_408
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_EPOCH_3910 v3 v4 v13
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
-- Ledger.Conway.Foreign.HSLedger.Epoch.HsTy-EpochState
d_HsTy'45'EpochState_416 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EpochState_416 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.Conv-EpochState
d_Conv'45'EpochState_418 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EpochState_418
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4782 v1 v2 v3 v4 v5
                -> coe
                     C_MkEpochState_4267
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_178
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_4279
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3012
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3012
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3012
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3014
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3014
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3014
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3016
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3016
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
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3016
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3018
                           (coe v2)))
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2406
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2408
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2412
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
                                 (coe v3))))
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
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2610
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3)))))))
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3)))))))
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1536
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3)))))))
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
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3)))))))
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3)))))))
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1552
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                (coe v3))))))))))
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
                                          (let v6
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                           coe
                                             (let v7
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                        (coe v6) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                            (coe v7))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                         (coe v7))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1132
                                 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1134
                                 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1136
                                 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1138
                                 (coe v4))))
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1140
                                    (coe v4))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_12419
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
                                             (let v6
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                              coe
                                                (let v7
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                           (coe v6) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                               (coe v7))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                            (coe v7))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1132
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                       (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1134
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                       (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1136
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                       (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1138
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                       (coe v5)))))
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1140
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                          (coe v5)))))))
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
                              (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1850
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1852
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEpochState_4267 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4782
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_180 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_180
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3020 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_4279
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                                         (coe v7)))))
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                                         (coe v7)))))
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
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                         (coe v7))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                                         (coe v8)))))
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                                         (coe v8)))))
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
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                         (coe v8))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
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
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                         (coe v9))))))
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_4279 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3020
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
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
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v16))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v16))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v14)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
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
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v16))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v16))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v14)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
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
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v14))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v16))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v16))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v14)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2614 v7 v8 v9
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2406
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2408
                                                (coe v7))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2412
                                                (coe v7)))
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                               (coe v9))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                               (coe v9))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1536
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                               (coe v9))))))
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
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                               (coe v9))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                               (coe v9))))))
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1552
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                               (coe v9))))))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2614
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2414 v11 v12 v13 v14
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
                                                                        (coe v11))))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2414
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (coe
                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                        () erased () erased
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
                                                                     (coe v11)))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                 (coe v15)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v13)))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
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
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1570 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1536
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548
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
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
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
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1552
                                                                              (coe v13))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1570
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1538 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                                                                                v15))))
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1538
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                        (coe
                                                                                                           v19) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                        (coe
                                                                                                           v19) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                        (coe
                                                                                                           v19) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                      (coe
                                                                                                         v19)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
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
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1382 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1382
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
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
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1554 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                                                                                v15))))
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1554
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v19
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                        (coe
                                                                                                           v18) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                            (coe
                                                                                                               v19))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                         (coe
                                                                                                            v19))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v19
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                        (coe
                                                                                                           v18) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                            (coe
                                                                                                               v19))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                         (coe
                                                                                                            v19))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1142 v7 v8 v9 v10 v11
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
                                                            (let v12
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                             coe
                                                               (let v13
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                          (coe v12) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                              (coe v13))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                           (coe v13))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                (coe
                                                   (\ v12 ->
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v8)))
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
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v9)))
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
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v10)))
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
                                                   (coe v11))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161 v7 v8 v9 v10 v11
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1142
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
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                          coe
                                                            (let v13
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                       (coe v12) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                           (coe v13))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                        (coe v13))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                             (coe
                                                (\ v12 ->
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
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                (\ v12 ->
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
                                                (\ v12 ->
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
                                                v9))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                             (coe
                                                (\ v12 ->
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
                                                v10))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                (let v12
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                 coe
                                                   (let v13
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                              (coe v12) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                               (coe v13)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                  (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                               (coe v13))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                (coe v11)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1854 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_12419
                                          (coe
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
                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                             (coe v10) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                 (coe v11))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1132
                                                      (coe v7))))
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1134
                                                      (coe v7))))
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1136
                                                      (coe v7))))
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1138
                                                      (coe v7))))
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1140
                                                         (coe v7))))))
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
                                                v8))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_12419 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1854
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1142 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                               (coe
                                                                                                  v16) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                   (coe
                                                                                                      v17))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1142
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
                                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                            (coe
                                                                                               v16) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                (coe
                                                                                                   v17))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                   (coe v16) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                                                    (coe v17)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                       (coe v17))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                    (coe v17))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                     (coe v15)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
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
                                                (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                                                   (coe v8))))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Epoch.epoch-step
epochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_4265 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_EpochState_4265
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
epochStep = coe d_epoch'45'step_420
d_epoch'45'step_420 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_4265 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_EpochState_4265
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
d_epoch'45'step_420 ~v0 v1 v2 = du_epoch'45'step_420 v1 v2
du_epoch'45'step_420 ::
  T_EpochState_4265 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_EpochState_4265
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
du_epoch'45'step_420 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_3296
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateFromConf_4818)
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_from_20
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                       (coe
                          (\ v2 ->
                             case coe v2 of
                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4782 v3 v4 v5 v6 v7
                                 -> coe
                                      C_MkEpochState_4267
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_178
                                            (coe v3)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_4279
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3012
                                                           (coe v4))))))
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3012
                                                           (coe v4))))))
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
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3012
                                                           (coe v4)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3014
                                                           (coe v4))))))
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3014
                                                           (coe v4))))))
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
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3014
                                                           (coe v4)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3016
                                                           (coe v4))))))
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3016
                                                           (coe v4))))))
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
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3016
                                                           (coe v4)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3018
                                            (coe v4)))
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2406
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
                                                           (coe v5))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2408
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
                                                  (coe v5)))
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
                                                           (coe v5))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2412
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2608
                                                  (coe v5))))
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
                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
                                            (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2610
                                               (coe v5)))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5)))))))
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5)))))))
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5)))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5))))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5)))))))
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
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5)))))))
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5))))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5)))))))
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5)))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1552
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2612
                                                                 (coe v5))))))))))
                                      (coe
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
                                                           (let v8
                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                            coe
                                                              (let v9
                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                         (coe v8) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                             (coe v9))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                          (coe v9))))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                               (coe
                                                  (\ v8 ->
                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1132
                                                  (coe v6))))
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
                                                  (\ v8 ->
                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1134
                                                  (coe v6))))
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
                                                  (\ v8 ->
                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1136
                                                  (coe v6))))
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
                                                  (\ v8 ->
                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1138
                                                  (coe v6))))
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1140
                                                     (coe v6))))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_12419
                                         (coe
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
                                                              (let v8
                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                               coe
                                                                 (let v9
                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                            (coe v8) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                (coe v9))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                             (coe v9))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                  (coe
                                                     (\ v8 ->
                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1132
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                                        (coe v7)))))
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
                                                     (\ v8 ->
                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1134
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                                        (coe v7)))))
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
                                                     (\ v8 ->
                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1136
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                                        (coe v7)))))
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
                                                     (\ v8 ->
                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1138
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                                        (coe v7)))))
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1140
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_1848
                                                           (coe v7)))))))
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
                                               (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_1850
                                                  (coe v7))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_1852
                                            (coe v7)))
                               _ -> MAlonzo.RTE.mazUnreachableError))
                       (coe
                          (\ v2 ->
                             case coe v2 of
                               C_MkEpochState_4267 v3 v4 v5 v6 v7
                                 -> coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4782
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_180 v9 v10
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                                           (coe v9) (coe v10)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575 v9 v10
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_180
                                                           (coe v9) (coe v10)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v3)
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3020 v9 v10 v11 v12
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_4279
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                                          (coe v9))))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
                                                                          (coe v10)))))
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
                                                                          (coe v10)))))
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
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                                          (coe v10))))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2952
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2954
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2956
                                                                          (coe v11))))))
                                                           (coe v12)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_4279 v9 v10 v11 v12
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3020
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                                            v14))))
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
                                                                                            v15))))
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
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                    (coe
                                                                                                       v17) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                     (coe
                                                                                                        v18))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v14)))
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                    (coe
                                                                                                       v17) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                     (coe
                                                                                                        v18))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v15)))
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v16)))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v9)
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                                            v14))))
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
                                                                                            v15))))
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
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                    (coe
                                                                                                       v17) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                     (coe
                                                                                                        v18))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v14)))
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                    (coe
                                                                                                       v17) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                     (coe
                                                                                                        v18))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v15)))
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v16)))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v10)
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443
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
                                                                                            v14))))
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
                                                                                            v15))))
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
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v16))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshot_1443 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2958
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                    (coe
                                                                                                       v17) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                     (coe
                                                                                                        v18))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v14)))
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                    (coe
                                                                                                       v17) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                     (coe
                                                                                                        v18))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v15)))
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v16)))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v11)
                                                           (coe v12)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v4)
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2614 v9 v10 v11
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2406
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2408
                                                                 (coe v9))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                    (coe
                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                       (coe
                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2412
                                                                 (coe v9)))
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
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
                                                              v10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                                                (coe v11))))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                                                (coe v11))))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                                                (coe v11))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                    (coe
                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                       (coe
                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1536
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
                                                                                (coe v11)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                                                (coe v11))))))
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
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                                                (coe v11))))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566
                                                                                (coe v11)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                                                (coe v11))))))
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                                                (coe v11))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                    (coe
                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                       (coe
                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1552
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568
                                                                                (coe v11))))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2614
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2414 v13 v14 v15 v16
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
                                                                                            v13))))
                                                                                (coe v14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                      (coe
                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                         (coe
                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v15))))
                                                                                (coe v16)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1173 v13 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2414
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (coe
                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                         () erased
                                                                                         () erased
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
                                                                                      (coe v13)))
                                                                                (coe v14)
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                  (coe
                                                                                                     v17)))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v15)))
                                                                                (coe v16)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v9)
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
                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_906)))
                                                              v10)
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1570 v13 v14 v15
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1530
                                                                                               (coe
                                                                                                  v13)))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1532
                                                                                               (coe
                                                                                                  v13)))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
                                                                                               (coe
                                                                                                  v13)))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                         (coe
                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                            (coe
                                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1536
                                                                                               (coe
                                                                                                  v13))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
                                                                                               (coe
                                                                                                  v14)))))
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
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
                                                                                               (coe
                                                                                                  v14)))))
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
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
                                                                                               (coe
                                                                                                  v14))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1548
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
                                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1550
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1552
                                                                                               (coe
                                                                                                  v15))))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701 v13 v14 v15
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1570
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1538 v17 v18 v19 v20
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v18))))
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v20))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_13209 v17 v18 v19 v20
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1538
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                           (let v21
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (let v22
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                                         (coe
                                                                                                                            v21) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                             (coe
                                                                                                                                v22))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                          (coe
                                                                                                                             v22))))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                           (coe
                                                                                                              v17)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                           (let v21
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (let v22
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                                         (coe
                                                                                                                            v21) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                             (coe
                                                                                                                                v22))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                          (coe
                                                                                                                             v22))))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                           (coe
                                                                                                              v18)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                           (let v21
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (let v22
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                                         (coe
                                                                                                                            v21) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                             (coe
                                                                                                                                v22))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                          (coe
                                                                                                                             v22))))))
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
                                                                                                           (let v21
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                                       (coe
                                                                                                                          v21)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                           (coe
                                                                                                              v20)))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                   v13)
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1382 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v18))))
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
                                                                                                                 v19))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_6133 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1382
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
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
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'StakePoolParams_70))
                                                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                           (coe
                                                                                                              v18)))
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
                                                                                                              v19)))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                   v14)
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1554 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v18))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v19))))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_24889 v17 v18 v19
                                                                                                -> coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1554
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                           (let v20
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (let v21
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                                         (coe
                                                                                                                            v20) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                             (coe
                                                                                                                                v21))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                          (coe
                                                                                                                             v21))))))
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
                                                                                                           (let v20
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (let v21
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                                         (coe
                                                                                                                            v20) in
                                                                                                               coe
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                             (coe
                                                                                                                                v21))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                          (coe
                                                                                                                             v21))))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_90
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                           (coe
                                                                                                              v18)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                           (let v20
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                                       (coe
                                                                                                                          v20)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_74)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                                        (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                                           (coe
                                                                                                              v19)))
                                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                                   v15)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v11)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v5)
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1142 v9 v10 v11 v12 v13
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                           (coe
                                                                                              v14) in
                                                                                 coe
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                               (coe
                                                                                                  v15))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                                 (coe v9)))
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
                                                                 (coe v10)))
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
                                                                 (coe v12)))
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
                                                                    (coe v13))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161 v9 v10 v11 v12 v13
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1142
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
                                                                          (let v14
                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                           coe
                                                                             (let v15
                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                        (coe v14) in
                                                                              coe
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                            (coe
                                                                                               v15))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
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
                                                                 v9))
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
                                                                 (\ v14 ->
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
                                                                 v10))
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
                                                                 (\ v14 ->
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
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                              (coe
                                                                 (\ v14 ->
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
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                 (let v14
                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                  coe
                                                                    (let v15
                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                               (coe v14) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                                                (coe v15)))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                   (coe v15))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                (coe v15))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                              (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                 (coe v13)))
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         v6)
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1854 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_12419
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                                                (let v12
                                                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                 coe
                                                                                   (let v13
                                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                              (coe
                                                                                                 v12) in
                                                                                    coe
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                  (coe
                                                                                                     v13))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                               (coe
                                                                                                  v13))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                    (coe
                                                                       (\ v12 ->
                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1132
                                                                       (coe v9))))
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
                                                                       (\ v12 ->
                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1134
                                                                       (coe v9))))
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
                                                                       (\ v12 ->
                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1136
                                                                       (coe v9))))
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
                                                                       (\ v12 ->
                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1138
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
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1140
                                                                          (coe v9))))))
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
                                                                 v10))
                                                           (coe v11)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_12419 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_1854
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1142 v13 v14 v15 v16 v17
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161
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
                                                                                                  (let v18
                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                   coe
                                                                                                     (let v19
                                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                                (coe
                                                                                                                   v18) in
                                                                                                      coe
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                    (coe
                                                                                                                       v19))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                 (coe
                                                                                                                    v19))))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                      (coe
                                                                                         (\ v18 ->
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
                                                                                         (\ v18 ->
                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                         (coe
                                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                      (coe
                                                                                         (\ v18 ->
                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                      (coe
                                                                                         (\ v18 ->
                                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                      (coe v16)))
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
                                                                                            v17))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_161 v13 v14 v15 v16 v17
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1142
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
                                                                                               (let v18
                                                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                coe
                                                                                                  (let v19
                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                             (coe
                                                                                                                v18) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                                 (coe
                                                                                                                    v19))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                              (coe
                                                                                                                 v19))))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                                   (coe
                                                                                      (\ v18 ->
                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                      (\ v18 ->
                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                      (coe
                                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                   (coe
                                                                                      (\ v18 ->
                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                                   (coe
                                                                                      (\ v18 ->
                                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                                      () erased ()
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                                      v16))
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v19
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                                                                                                    (coe
                                                                                                       v18) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                                                                                                     (coe
                                                                                                        v19)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                        (coe
                                                                                                           v19))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                                                                                                     (coe
                                                                                                        v19))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RewardAddress_28)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                   (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
                                                                                      (coe v17)))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                                              v9)
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
                                                                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
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
                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_Success_50
                (coe
                   MAlonzo.Code.Foreign.Convertible.d_to_18
                   (coe
                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94
                      (coe d_Conv'45'EpochState_418)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateToConf_4834)
                         (coe v3))
                      (coe
                         MAlonzo.Code.Class.Show.Core.d_show_16 (coe du_Show'45'EPOCH_408)
                         v4)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochState
d_EpochState_4265 = ()
type T_EpochState_4265 = EpochState
pattern C_MkEpochState_4267 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_MkEpochState_4267 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_Acnt_10573 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.T_Snapshots_4277 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.T_LState_2891 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.T_RatifyState_12417 ->
  T_EpochState_4265
check_MkEpochState_4267 = MkEpochState
cover_EpochState_4265 :: EpochState -> ()
cover_EpochState_4265 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
