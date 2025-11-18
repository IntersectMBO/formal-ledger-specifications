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
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateFromConf_4792
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochStateToConf
d_EpochStateToConf_24 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_EpochStateToConf_24
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateToConf_4808
-- Ledger.Conway.Foreign.HSLedger.Epoch._.HasCast-EpochState
d_HasCast'45'EpochState_26 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_26
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'EpochState_4788
-- Ledger.Conway.Foreign.HSLedger.Epoch._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_28 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_28
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_HasCast'45'NewEpochState_4790
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState
d_NewEpochState_36 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochStateFromConf
d_NewEpochStateFromConf_40 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateFromConf_40
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_NewEpochStateFromConf_4826
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochStateToConf
d_NewEpochStateToConf_42 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_NewEpochStateToConf_42
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_NewEpochStateToConf_4844
-- Ledger.Conway.Foreign.HSLedger.Epoch._.PoolDelegatedStake
d_PoolDelegatedStake_44 :: ()
d_PoolDelegatedStake_44 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.applyRUpd
d_applyRUpd_46 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2892 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734
d_applyRUpd_46
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_applyRUpd_4864
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_48 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_48
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_calculatePoolDelegatedStake_4922
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.getOrphans
d_getOrphans_50 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_50
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getOrphans_3656
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.getStakeCred
d_getStakeCred_52 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_52
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getStakeCred_3312
-- Ledger.Conway.Foreign.HSLedger.Epoch._.mkStakeDistrs
d_mkStakeDistrs_54 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2928 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2594
d_mkStakeDistrs_54
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3592
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.toRewardAddress
d_toRewardAddress_56 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_toRewardAddress_56
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_toRewardAddress_3308
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.acnt
d_acnt_74 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166
d_acnt_74 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_4746 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.es
d_es_76 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_es_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_4752 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.fut
d_fut_78 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2638
d_fut_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_4754 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.ls
d_ls_80 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584
d_ls_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_4750 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.ss
d_ss_82 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2986
d_ss_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_4748 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.bcur
d_bcur_86 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bcur_4778 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.bprev
d_bprev_88 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_bprev_4776 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.epochState
d_epochState_90 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734
d_epochState_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_4780
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.lastEpoch
d_lastEpoch_92 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  Integer
d_lastEpoch_92 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_4774
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.pd
d_pd_94 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_94 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_pd_4784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NewEpochState.ru
d_ru_96 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2892
d_ru_96 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_4782 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Computational-EPOCH
d_Computational'45'EPOCH_100 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_100
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'EPOCH_2950
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_102 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_102
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'NEWEPOCH_3100
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-complete
d_EPOCH'45'complete_104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4978 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_104 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-complete'
d_EPOCH'45'complete''_106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4978 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_106 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-deterministic
d_EPOCH'45'deterministic_108 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4978 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4978 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_108 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-total
d_EPOCH'45'total_110 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_110
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_EPOCH'45'total_2900
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EPOCH-total'
d_EPOCH'45'total''_112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_112
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_EPOCH'45'total''_2944
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_114 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__5102 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_114 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.NEWEPOCH-total
d_NEWEPOCH'45'total_116 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_4760 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_116
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_NEWEPOCH'45'total_2978
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.SNAP-complete
d_SNAP'45'complete_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2986 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2986 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2582 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_118 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.SNAP-deterministic
d_SNAP'45'deterministic_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2986 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2986 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2986 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2582 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2582 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic_120 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch._.SNAP-total
d_SNAP'45'total_122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2584 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_122
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_SNAP'45'total_2832
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch._.es
d_es_124 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_es_124 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_es_2892
      v0
-- Ledger.Conway.Foreign.HSLedger.Epoch._.govSt'
d_govSt''_126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_4734 ->
  Integer -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_126 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_govSt''_2894
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3178 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150
d_EpochStateOf_142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3186
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Governance-Update
d_Governance'45'Update_144 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasCast-EpochState
d_HasCast'45'EpochState_150 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'EpochState_3304
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasCast-NewEpochState
d_HasCast'45'NewEpochState_152 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'NewEpochState_3306
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasCertState-NewEpochState
d_HasCertState'45'NewEpochState_154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1482
d_HasCertState'45'NewEpochState_154
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCertState'45'NewEpochState_3296
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasDReps-EpochState
d_HasDReps'45'EpochState_156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232
d_HasDReps'45'EpochState_156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDReps'45'EpochState_3202
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasDReps-NewEpochState
d_HasDReps'45'NewEpochState_158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232
d_HasDReps'45'NewEpochState_158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDReps'45'NewEpochState_3298
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasDeposits-EpochState
d_HasDeposits'45'EpochState_160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130
d_HasDeposits'45'EpochState_160
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasDeposits'45'EpochState_3200
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEnactState-EpochState
d_HasEnactState'45'EpochState_162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1138
d_HasEnactState'45'EpochState_162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'EpochState_3198
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEnactState-NewEpochState
d_HasEnactState'45'NewEpochState_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_HasEnactState_1138
d_HasEnactState'45'NewEpochState_164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEnactState'45'NewEpochState_3288
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEpochState
d_HasEpochState_166 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEpochState-NewEpochState
d_HasEpochState'45'NewEpochState_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3178
d_HasEpochState'45'NewEpochState_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasEpochState'45'NewEpochState_3286
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasGovState-NewEpochState
d_HasGovState'45'NewEpochState_172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.T_HasGovState_2586
d_HasGovState'45'NewEpochState_172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasGovState'45'NewEpochState_3294
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLState-EpochState
d_HasLState'45'EpochState_174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2836
d_HasLState'45'EpochState_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'EpochState_3196
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLState-NewEpochState
d_HasLState'45'NewEpochState_176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_HasLState_2836
d_HasLState'45'NewEpochState_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLState'45'NewEpochState_3292
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLastEpoch
d_HasLastEpoch_178 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLastEpoch-NewEpochState
d_HasLastEpoch'45'NewEpochState_182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3268
d_HasLastEpoch'45'NewEpochState_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasLastEpoch'45'NewEpochState_3284
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasNewEpochState
d_HasNewEpochState_184 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasPParams-EpochState
d_HasPParams'45'EpochState_188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'EpochState_188
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPParams'45'EpochState_3208
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasPParams-NewEpochState
d_HasPParams'45'NewEpochState_190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'NewEpochState_190
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPParams'45'NewEpochState_3302
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasPState-EpochState
d_HasPState'45'EpochState_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442
d_HasPState'45'EpochState_192
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasPState'45'EpochState_3212
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasRatifyState-EpochState
d_HasRatifyState'45'EpochState_194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_HasRatifyState_2658
d_HasRatifyState'45'EpochState_194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRatifyState'45'EpochState_3210
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasReserves-EpochState
d_HasReserves'45'EpochState_196 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'EpochState_196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasReserves'45'EpochState_3206
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasRewards-NewEpochState
d_HasRewards'45'NewEpochState_198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'NewEpochState_198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasRewards'45'NewEpochState_3300
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasSnapshots-EpochState
d_HasSnapshots'45'EpochState_200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_3010
d_HasSnapshots'45'EpochState_200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasSnapshots'45'EpochState_3194
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasTreasury-EpochState
d_HasTreasury'45'EpochState_202 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'EpochState_202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasTreasury'45'EpochState_3204
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Hastreasury-NewEpochState
d_Hastreasury'45'NewEpochState_204 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_Hastreasury'45'NewEpochState_204
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_Hastreasury'45'NewEpochState_3290
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.LastEpochOf
d_LastEpochOf_206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3268 ->
  AgdaAny -> Integer
d_LastEpochOf_206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState
d_NewEpochState_214 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochStateOf
d_NewEpochStateOf_218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216
d_NewEpochStateOf_218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3256
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.PoolDelegatedStake
d_PoolDelegatedStake_220 :: ()
d_PoolDelegatedStake_220 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAP-Update
d_Post'45'POOLREAP'45'Update_222 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAP-Update
d_Pre'45'POOLREAP'45'Update_228 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.applyRUpd
d_applyRUpd_234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2892 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150
d_applyRUpd_234
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_applyRUpd_3448
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.calculatePoolDelegatedStake
d_calculatePoolDelegatedStake_236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStake_236
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStake_3504
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.calculatePoolDelegatedStakeForVoting
d_calculatePoolDelegatedStakeForVoting_238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2928 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculatePoolDelegatedStakeForVoting_238
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStakeForVoting_3578
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.calculateVDelegDelegatedStake
d_calculateVDelegDelegatedStake_240 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculateVDelegDelegatedStake_240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculateVDelegDelegatedStake_3576
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.createRUpd
d_createRUpd_242 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2892
d_createRUpd_242
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_createRUpd_3316
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.getOrphans
d_getOrphans_244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_244
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getOrphans_3656
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.getStakeCred
d_getStakeCred_246 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_getStakeCred_246
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_getStakeCred_3312
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.mkStakeDistrs
d_mkStakeDistrs_248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2928 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2594
d_mkStakeDistrs_248
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3592
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.stakeFromGADeposits
d_stakeFromGADeposits_250 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeFromGADeposits_250
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_stakeFromGADeposits_3516
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.toRewardAddress
d_toRewardAddress_252 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_toRewardAddress_252
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_toRewardAddress_3308
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.acnt
d_acnt_270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166
d_acnt_270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3162 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.es
d_es_272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_es_272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3168 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.fut
d_fut_274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2638
d_fut_274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3170 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.ls
d_ls_276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816
d_ls_276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3166 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EpochState.ss
d_ss_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2986
d_ss_278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3164 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Governance-Update.govSt'
d_govSt''_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Governance-Update.removedGovActions
d_removedGovActions_284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_removedGovActions_3694
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.govSt'
d_govSt''_288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_288
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_govSt''_3740
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.orphans
d_orphans_290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_orphans_290
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_orphans_3726
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.removed'
d_removed''_292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed''_292
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_removed''_3728
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.removedGovActions
d_removedGovActions_294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_294
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_removedGovActions_3730
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.tmpGovSt
d_tmpGovSt_296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2638 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_tmpGovSt_296
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_tmpGovSt_3722
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.GovernanceUpdate.updates
d_updates_298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688
d_updates_298
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3744
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasEpochState.EpochStateOf
d_EpochStateOf_302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasEpochState_3178 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150
d_EpochStateOf_302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_EpochStateOf_3186
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasLastEpoch.LastEpochOf
d_LastEpochOf_306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasLastEpoch_3268 ->
  AgdaAny -> Integer
d_LastEpochOf_306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_LastEpochOf_3276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.HasNewEpochState.NewEpochStateOf
d_NewEpochStateOf_310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_HasNewEpochState_3248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216
d_NewEpochStateOf_310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_NewEpochStateOf_3256
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.bcur
d_bcur_314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bcur_314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.bprev
d_bprev_316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bprev_316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.epochState
d_epochState_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150
d_epochState_318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3236
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.lastEpoch
d_lastEpoch_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  Integer
d_lastEpoch_320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.pd
d_pd_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pd_322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NewEpochState.ru
d_ru_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2892
d_ru_324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAP-Update.acnt''
d_acnt''''_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3806 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166
d_acnt''''_328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt''''_3814
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAP-Update.dState''
d_dState''''_330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3806 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342
d_dState''''_330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_dState''''_3812
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.acnt''
d_acnt''''_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166
d_acnt''''_334
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_acnt''''_3856
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.dState''
d_dState''''_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342
d_dState''''_336 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_dState''''_3848
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.govActionReturns
d_govActionReturns_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionReturns_338 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_govActionReturns_3836
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.payout
d_payout_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_payout_340 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_payout_3844
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.refunds
d_refunds_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refunds_342 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_refunds_3846
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.totWithdrawals
d_totWithdrawals_344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  Integer
d_totWithdrawals_344 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_totWithdrawals_3852
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.unclaimed
d_unclaimed_346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  Integer
d_unclaimed_346 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_unclaimed_3850
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v2 v4
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Post-POOLREAPUpdate.updates
d_updates_348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Post'45'POOLREAP'45'Update_3806
d_updates_348
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3858
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAP-Update.gState'
d_gState''_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3746 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374
d_gState''_352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_gState''_3756
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAP-Update.pState'
d_pState''_354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3746 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_pState''_354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pState''_3754
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAP-Update.utxoSt'
d_utxoSt''_356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3746 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_utxoSt''_356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_utxoSt''_3758
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAPUpdate.gState'
d_gState''_360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374
d_gState''_360
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_gState''_3802
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAPUpdate.pState'
d_pState''_362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_pState''_362 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_pState''_3800
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAPUpdate.updates
d_updates_364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Pre'45'POOLREAP'45'Update_3746
d_updates_364
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_updates_3804
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Pre-POOLREAPUpdate.utxoSt'
d_utxoSt''_366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2816 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_Governance'45'Update_3688 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_utxoSt''_366 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_utxoSt''_3798
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v2
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.VDelegDelegatedStake.activeDReps
d_activeDReps_370 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_activeDReps_370 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_activeDReps_3560
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v3
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.VDelegDelegatedStake.activeVDelegs
d_activeVDelegs_372 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_932]
d_activeVDelegs_372 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_activeVDelegs_3562
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v0 v3
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.VDelegDelegatedStake.calculate
d_calculate_374 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_calculate_374
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculate_3570
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.VDelegDelegatedStake.stakePerCredential
d_stakePerCredential_376 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer
d_stakePerCredential_376 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_stakePerCredential_3564
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
      v1 v2 v4 v5
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Computational-EPOCH
d_Computational'45'EPOCH_380 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_Computational'45'EPOCH_3276
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_382 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_Computational'45'NEWEPOCH_3426
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-complete
d_EPOCH'45'complete_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3860 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_384 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-complete'
d_EPOCH'45'complete''_386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3860 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_386 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-deterministic
d_EPOCH'45'deterministic_388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3860 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_388 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-total
d_EPOCH'45'total_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_390
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total_3128
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.EPOCH-total'
d_EPOCH'45'total''_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_392
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_3270
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_394 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3886 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_394 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochSpec._.NEWEPOCH-total
d_NEWEPOCH'45'total_396 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_396
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_NEWEPOCH'45'total_3304
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
-- Ledger.Conway.Foreign.HSLedger.Epoch.Show-EPOCH
d_Show'45'EPOCH_404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3150 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'EPOCH_404 ~v0 ~v1 ~v2 = du_Show'45'EPOCH_404
du_Show'45'EPOCH_404 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'EPOCH_404
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_EPOCH_3884 v3 v4 v13
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
d_HsTy'45'EpochState_412 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EpochState_412 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.Conv-EpochState
d_Conv'45'EpochState_414 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EpochState_414
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4756 v1 v2 v3 v4 v5
                -> coe
                     C_MkEpochState_4247
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_172
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_174
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2996
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2996
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2996
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2998
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2998
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2998
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3000
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3000
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3000
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3002
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1171
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2392
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2394
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2396
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
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
                           (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2594
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1522
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1526
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1366
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1368
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1370
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1538
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1540
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1542
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                        (coe v6) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                            (coe v7))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126
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
                                 MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                    (coe v4))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_11671
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
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                           (coe v6) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                               (coe v7))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                              (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2648
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2650
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEpochState_4247 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4756
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_176 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_176
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3004 v7 v8 v9 v10
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
                                                         (coe v9))))))
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_4279 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3004
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942 v12 v13 v14
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942 v12 v13 v14
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942 v12 v13 v14
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                      coe
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                   (coe v15) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                       (coe v16))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2598 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1171
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2392
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2394
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2396
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1522
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1526
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1366
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1368
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
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
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1370
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1538
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1540
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
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
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1542
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
                                                               (coe v9))))))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2598
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1171
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
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1171 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398
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
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1560 v11 v12 v13
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1522
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1526
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
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1366
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
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1368
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
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1370
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1538
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1540
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1542
                                                                              (coe v13))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1560
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1528 v15 v16 v17 v18
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
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1528
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1372 v15 v16 v17
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
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1372
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1544 v15 v16 v17
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
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1544
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                           coe
                                                                                             (let v19
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                            (coe
                                                                                                               v19))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                            (coe
                                                                                                               v19))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132 v7 v8 v9 v10 v11
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
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                          (coe v12) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                              (coe v13))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
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
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                       (coe v12) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                           (coe v13))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                              (coe v12) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                               (coe v13)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                  (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                   MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2652 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_11671
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
                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                             (coe v10) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                 (coe v11))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
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
                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
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
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_11671 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2652
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132 v11 v12 v13 v14 v15
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
                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                   (coe
                                                                                                      v17))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
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
                                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                (coe
                                                                                                   v17))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                   (coe v16) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                                    (coe v17)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                       (coe v17))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
  T_EpochState_4245 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () () T_EpochState_4245
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
epochStep = coe d_epoch'45'step_416
d_epoch'45'step_416 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_4245 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_EpochState_4245
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
d_epoch'45'step_416 ~v0 v1 v2 = du_epoch'45'step_416 v1 v2
du_epoch'45'step_416 ::
  T_EpochState_4245 ->
  Integer ->
  MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Qstdlib.Foreign.Haskell.Empty.T_Empty_8
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny T_EpochState_4245
       MAlonzo.Code.Agda.Builtin.String.T_String_6)
du_epoch'45'step_416 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties.Computational.du_EPOCH'45'total''_3270
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe
                    MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16))
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateFromConf_4792)
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_from_20
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_constructor_22
                       (coe
                          (\ v2 ->
                             case coe v2 of
                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4756 v3 v4 v5 v6 v7
                                 -> coe
                                      C_MkEpochState_4247
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_172
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_174
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2996
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2996
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2996
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2998
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2998
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2998
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3000
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3000
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3000
                                                           (coe v4)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3002
                                            (coe v4)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1171
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
                                                           (coe v5))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2392
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2394
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
                                                           (coe v5))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2396
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2592
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
                                            (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2594
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1522
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1526
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1366
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1368
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1370
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1538
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1540
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1542
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2596
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
                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                         (coe v8) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                             (coe v9))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126
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
                                                  MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                                     (coe v6))))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_11671
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
                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                            (coe v8) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                (coe v9))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2646
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
                                               (MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2648
                                                  (coe v7))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2650
                                            (coe v7)))
                               _ -> MAlonzo.RTE.mazUnreachableError))
                       (coe
                          (\ v2 ->
                             case coe v2 of
                               C_MkEpochState_4247 v3 v4 v5 v6 v7
                                 -> coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_4756
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_176 v9 v10
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575
                                                           (coe v9) (coe v10)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_10575 v9 v10
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_176
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3004 v9 v10 v11 v12
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2936
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2938
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2940
                                                                          (coe v11))))))
                                                           (coe v12)
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.C_MkSnapshots_4279 v9 v10 v11 v12
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_3004
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v13 ->
                                                                       case coe v13 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942 v14 v15 v16
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
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942 v14 v15 v16
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
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942 v14 v15 v16
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
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_constructor_2942
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                        (coe
                                                                                                           v18))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2598 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1171
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2392
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2394
                                                                          (coe v9)))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2396
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1522
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1526
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1366
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1368
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1370
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1538
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1540
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1542
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558
                                                                                (coe v11))))))))
                                                    _ -> MAlonzo.RTE.mazUnreachableError))
                                            (coe
                                               (\ v8 ->
                                                  case coe v8 of
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2893 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2598
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398 v13 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1171
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
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1171 v13 v14 v15 v16
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2398
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
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1560 v13 v14 v15
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1520
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1522
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1526
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
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1366
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
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1368
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
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1370
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1538
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1540
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
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1542
                                                                                               (coe
                                                                                                  v15))))))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_701 v13 v14 v15
                                                                           -> coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1560
                                                                                (coe
                                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                                      (coe
                                                                                         (\ v16 ->
                                                                                            case coe
                                                                                                   v16 of
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1528 v17 v18 v19 v20
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
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1528
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                           (let v21
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (let v22
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                             (coe
                                                                                                                                v22))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                             (coe
                                                                                                                                v22))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                             (coe
                                                                                                                                v22))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1372 v17 v18 v19
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
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1372
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
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1544 v17 v18 v19
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
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1544
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116
                                                                                                           (let v20
                                                                                                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
                                                                                                            coe
                                                                                                              (let v21
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                             (coe
                                                                                                                                v21))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                             (coe
                                                                                                                                v21))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132 v9 v10 v11 v12 v13
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
                                                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                               (coe
                                                                                                  v15))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
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
                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                        (coe v14) in
                                                                              coe
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                            (coe
                                                                                               v15))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                               (coe v14) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                                (coe v15)))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                   (coe v15))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                    MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2652 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_11671
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
                                                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                  (coe
                                                                                                     v13))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_cc_1122
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_constitution_1124
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pv_1126
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
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Enact.d_pparams_1128
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Enact.d_withdrawals_1130
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
                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_11671 v9 v10 v11
                                                      -> coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.C_constructor_2652
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                                                                 (coe
                                                                    (\ v12 ->
                                                                       case coe v12 of
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132 v13 v14 v15 v16 v17
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
                                                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                    (coe
                                                                                                                       v19))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Enact.C_constructor_1132
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
                                                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                                 (coe
                                                                                                                    v19))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                                                                                                = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                                                                                                    (coe
                                                                                                       v18) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                                                                                                     (coe
                                                                                                        v19)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                                                                                                        (coe
                                                                                                           v19))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
                      (coe d_Conv'45'EpochState_414)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvString_14))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_86
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_EpochStateToConf_4808)
                         (coe v3))
                      (coe
                         MAlonzo.Code.Class.Show.Core.d_show_16 (coe du_Show'45'EPOCH_404)
                         v4)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochState
d_EpochState_4245 = ()
type T_EpochState_4245 = EpochState
pattern C_MkEpochState_4247 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_MkEpochState_4247 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_Acnt_10573 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Rewards.T_Snapshots_4277 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.T_LState_2891 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_159 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.T_RatifyState_11669 ->
  T_EpochState_4245
check_MkEpochState_4247 = MkEpochState
cover_EpochState_4245 :: EpochState -> ()
cover_EpochState_4245 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
