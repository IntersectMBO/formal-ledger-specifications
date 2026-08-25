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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Enact
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Epoch
d_Epoch_220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_220 = erased
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_560 ~v0 = du_HasTreasury'45'Acnt_560
du_HasTreasury'45'Acnt_560 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_560
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__3048 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3050 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState
d_EpochState_3054 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.Governance-Update
d_Governance'45'Update_3060 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.mkStakeDistrs
d_mkStakeDistrs_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3760 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3146 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1934
d_mkStakeDistrs_3164 v0 ~v1 = du_mkStakeDistrs_3164 v0
du_mkStakeDistrs_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3760 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3146 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1934
du_mkStakeDistrs_3164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_mkStakeDistrs_4414
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.acnt
d_acnt_3186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_3186 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.es
d_es_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_es_3188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4020 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.fut
d_fut_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978
d_fut_3190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.ls
d_ls_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776
d_ls_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.ss
d_ss_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818
d_ss_3194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4016 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.Governance-Update.govSt'
d_govSt''_3198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4522
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.Governance-Update.removedGovActions
d_removedGovActions_3200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4514 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_removedGovActions_4520
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState
d_EnactState_3316 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.cc
d_cc_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_3366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.constitution
d_constitution_3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_3368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.pparams
d_pparams_3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.pv
d_pv_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_3372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1246 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.withdrawals
d_withdrawals_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_3374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1250
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasCCHotKeys-LedgerState
d_HasCCHotKeys'45'LedgerState_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1506
d_HasCCHotKeys'45'LedgerState_3392 ~v0 ~v1
  = du_HasCCHotKeys'45'LedgerState_3392
du_HasCCHotKeys'45'LedgerState_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1506
du_HasCCHotKeys'45'LedgerState_3392
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCCHotKeys'45'LedgerState_3834
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasDReps-LedgerState
d_HasDReps'45'LedgerState_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
d_HasDReps'45'LedgerState_3404 ~v0 ~v1
  = du_HasDReps'45'LedgerState_3404
du_HasDReps'45'LedgerState_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
du_HasDReps'45'LedgerState_3404
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDReps'45'LedgerState_3836
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasPools-LedgerState
d_HasPools'45'LedgerState_3430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1546
d_HasPools'45'LedgerState_3430 ~v0 ~v1
  = du_HasPools'45'LedgerState_3430
du_HasPools'45'LedgerState_3430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1546
du_HasPools'45'LedgerState_3430
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPools'45'LedgerState_3820
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasVoteDelegs-LedgerState
d_HasVoteDelegs'45'LedgerState_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
d_HasVoteDelegs'45'LedgerState_3440 ~v0 ~v1
  = du_HasVoteDelegs'45'LedgerState_3440
du_HasVoteDelegs'45'LedgerState_3440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
du_HasVoteDelegs'45'LedgerState_3440
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasVoteDelegs'45'LedgerState_3828
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.LedgerState
d_LedgerState_3450 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.LedgerState.certState
d_certState_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1408
d_certState_3502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3788
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.LedgerState.govSt
d_govSt_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3786
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3146
d_utxoSt_3506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3784
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.PoolReapState
d_PoolReapState_3536 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.PoolReapState.acnt
d_acnt_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T_PoolReapState_3026 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_3548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.PoolReapState.dState
d_dState_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T_PoolReapState_3026 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352
d_dState_3550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.PoolReapState.pState
d_pState_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T_PoolReapState_3026 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372
d_pState_3552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_3572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_3572 ~v0 ~v1 = du_HasCast'45'RatifyEnv_3572
du_HasCast'45'RatifyEnv_3572 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_3572
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyEnv_2022
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.completeness
d_completeness_3882 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3882 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.computeProof
d_computeProof_3888 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3888 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-total
d_EPOCH'45'total_3910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_3910 v0 ~v1 v2 v3
  = du_EPOCH'45'total_3910 v0 v2 v3
du_EPOCH'45'total_3910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_3910 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasCast'45'EpochState_4156)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt''''_4638
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4682
                  (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                     (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1814)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1362
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                   (coe v1))))))))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (let v3
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_2108
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1364
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1))))))))))
                                 (let v4
                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v4)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                  (coe v1))))))))))
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1))))))))))
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                  (coe v0))) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v3)
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                   (coe v0))))
                                          (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   (\ v4 ->
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                                        (coe v4)))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                 (coe v0))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v4)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1))))))))))
                                                      (let v5
                                                             = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v5)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe
                                                                                          v1))))))))))
                                                            (coe v2)))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1)))))))))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1))))))))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1368
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                         (coe v1)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                         (coe v1))))))))))))))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           addInt
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                              (coe
                                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                              (coe (\ v3 -> v3))
                              (let v3
                                     = coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                               (coe v0))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v3)
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                (coe v0))))
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                (\ v4 ->
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                                     (coe v4)))
                                             (let v4
                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v4)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1))))))))))
                                                   (let v5
                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v5)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe
                                                                                       v1))))))))))
                                                         (coe v2)))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                  (coe v1)))))))))))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                  (coe v1))))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                      (coe v1)))))))))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                   (coe v1))))))))))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                        (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                        (coe v1)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational.du_SNAP'45'total_2884
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                        (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4016
                        (coe v1))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3838)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4580
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                 (coe v1))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4522
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1422
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_dState''''_4636
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4682
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1814)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1362
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1))))))))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v3
                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_2108
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1364
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1))))))))))
                                                   (let v4
                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v4)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe
                                                                                       v1))))))))))
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v0))))
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1))))))))))
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                    (coe v0))) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v3)
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     (\ v4 ->
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                                                          (coe v4)))
                                                                  (let v4
                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                   (coe v0))) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                           erased v4)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                   (coe
                                                                                                      v1))))))))))
                                                                        (let v5
                                                                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                                      (coe v0)) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                 erased v5)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                         (coe
                                                                                                            v1))))))))))
                                                                              (coe v2)))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe
                                                                                          v1)))))))))))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe
                                                                                          v1))))))))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1368
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1))))))))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             addInt
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                                (coe
                                                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                (coe (\ v3 -> v3))
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                 (coe v0))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v3)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  (\ v4 ->
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                                                       (coe v4)))
                                                               (let v4
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                (coe v0))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v4)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1))))))))))
                                                                     (let v5
                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                                   (coe v0)) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                              erased v5)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                      (coe
                                                                                                         v1))))))))))
                                                                           (coe v2)))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe
                                                                                       v1)))))))))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe
                                                                                       v1))))))))))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                        (coe v1)))))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1))))))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_1816)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (let v3
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                     (coe v0))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v3)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1))))))))))
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1))))))))))
                                                (coe v2)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (let v3
                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                        (coe v0))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v3)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1384
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                        (coe v1))))))))))
                                             (let v4
                                                    = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                           (coe v0)) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v4)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1))))))))))
                                                   (coe v2)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                           (coe v0))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v3)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1))))))))))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                              (coe v0)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v4)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1))))))))))
                                                      (coe v2)))))
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                           (coe v0))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v3)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1))))))))))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                              (coe v0)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v4)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1))))))))))
                                                      (coe v2)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_gState''_4578
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1252
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1246
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                           (coe
                              MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_348
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total''_3210
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyEnv_2022)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_mkStakeDistrs_4414
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3828
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational.du_SNAP'45'total_2884
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4016
                                                (coe v1)))))
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4580
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                (coe v1)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4522
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1694
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGState'45'LedgerState_3822)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDReps'45'LedgerState_3836)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1514
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCCHotKeys'45'LedgerState_3834)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Base.d_TreasuryOf_88
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt''''_4638
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4682
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1814)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1362
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe
                                                                                          v1))))))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (let v3
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                (coe v0))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_2108
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v3)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1364
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1))))))))))
                                                                     (let v4
                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                                   (coe v0)) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                              erased v4)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                      (coe
                                                                                                         v1))))))))))
                                                                           (coe v2)))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                     MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                 (coe v0))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                              (coe v0))))
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1))))))))))
                                                                     (let v3
                                                                            = coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                      (coe v0))) in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                              erased v3)
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v0))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                          (coe
                                                                                             v0))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v0))))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (coe
                                                                                       (\ v4 ->
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                                                                            (coe
                                                                                               v4)))
                                                                                    (let v4
                                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                     (coe
                                                                                                        v0))) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                             erased
                                                                                             v4)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                               (coe
                                                                                                                  v1)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                     (coe
                                                                                                                        v1)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                     (coe
                                                                                                                        v1))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                     (coe
                                                                                                                        v1))))))))))
                                                                                          (let v5
                                                                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                                                        (coe
                                                                                                           v0)) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                   (coe
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                   erased
                                                                                                   v5)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                     (coe
                                                                                                                        v1)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                        (coe
                                                                                                                           v1))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                           (coe
                                                                                                                              v1)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                           (coe
                                                                                                                              v1))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                           (coe
                                                                                                                              v1))))))))))
                                                                                                (coe
                                                                                                   v2)))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                         (coe
                                                                                                            v1)))))))))))
                                                                           (coe
                                                                              MAlonzo.Code.Class.IsSet.du_dom_586
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                         (coe
                                                                                                            v1))))))))))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1368
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                             (coe
                                                                                                v1))))))))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               addInt
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                                                  (coe
                                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                                  (coe (\ v3 -> v3))
                                                                  (let v3
                                                                         = coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                   (coe v0))) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                           erased v3)
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v0))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                       (coe v0))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v0))))
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe
                                                                                    (\ v4 ->
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                                                                         (coe v4)))
                                                                                 (let v4
                                                                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                  (coe
                                                                                                     v0))) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                          erased v4)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                            (coe
                                                                                                               v1)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                  (coe
                                                                                                                     v1)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                  (coe
                                                                                                                     v1))))))))))
                                                                                       (let v5
                                                                                              = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                                                     (coe
                                                                                                        v0)) in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                erased
                                                                                                v5)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                  (coe
                                                                                                                     v1)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                     (coe
                                                                                                                        v1))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                        (coe
                                                                                                                           v1)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                        (coe
                                                                                                                           v1))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                        (coe
                                                                                                                           v1))))))))))
                                                                                             (coe
                                                                                                v2)))))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                      (coe
                                                                                                         v1)))))))))))
                                                                        (coe
                                                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe
                                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                      (coe
                                                                                                         v1))))))))))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                          (coe
                                                                                             v1)))))))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe
                                                                                          v1))))))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1))))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1554
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPools'45'LedgerState_3820)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1078
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasVoteDelegs'45'LedgerState_3828)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2024)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1252
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1246
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                                       (coe
                                          MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_348
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                                       (coe
                                          MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4522
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                    (coe v1)))))))))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_EPOCH_4708
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1814)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1362
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                              (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1))))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (let v3
                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                   (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_2108
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1516
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v3)
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1364
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                   (coe v1))))))))))
                        (let v4
                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v4)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                         (coe v1)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                         (coe v1))))))))))
                              (coe v2)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                 (coe v0))))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                   (coe v1))))))))))
                        (let v3
                               = coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                         (coe v0))) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v3)
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v0))))
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          (\ v4 ->
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                               (coe v4)))
                                       (let v4
                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                        (coe v0))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v4)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                        (coe v1))))))))))
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                           (coe v0)) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v5)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                              (coe v1))))))))))
                                                   (coe v2)))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1)))))))))))
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                            (coe v1))))))))))))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1368
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                (coe v1))))))))))))))
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  addInt
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                     (coe
                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                     (coe (\ v3 -> v3))
                     (let v3
                            = coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1516
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased v3)
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                       (coe v0))))
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       (\ v4 ->
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                            (coe v4)))
                                    (let v4
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                     (coe v0))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v4)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                     (coe v1))))))))))
                                          (let v5
                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v5)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                           (coe v1))))))))))
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                         (coe v1)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                         (coe v1)))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_586
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                         (coe v1)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                         (coe v1))))))))))))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                        (coe
                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                 (coe v1))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                             (coe v1)))))))))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                              (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1))))))))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational.du_SNAP'45'total_2884
                  (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                     (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4016
                     (coe v1))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.Properties.Computational.d_POOLREAP'45'total_2642
                     (coe v0) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                              (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1))))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total''_3210
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyEnv_2022)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_mkStakeDistrs_4414
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3828
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational.du_SNAP'45'total_2884
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4016
                                          (coe v1)))))
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4580
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4522
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1694
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGState'45'LedgerState_3822)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDReps'45'LedgerState_3836)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1514
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCCHotKeys'45'LedgerState_3834)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Base.d_TreasuryOf_88
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt''''_4638
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4682
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1814)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1362
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1))))))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (let v3
                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                          (coe v0))) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_2108
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1364
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                          (coe
                                                                                             v1))))))))))
                                                               (let v4
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                             (coe v0)) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v4)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1))))))))))
                                                                     (coe v2)))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__582
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                        (coe v0))))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                          (coe
                                                                                             v1))))))))))
                                                               (let v3
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                   (coe v0))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                (coe v0))) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                        erased v3)
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                 (coe v0))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                    (coe v0))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                 (coe v0))))
                                                                        (coe
                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe
                                                                                 (\ v4 ->
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                                                                      (coe v4)))
                                                                              (let v4
                                                                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                               (coe
                                                                                                  v0))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                       erased v4)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                               (coe
                                                                                                                  v1)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                               (coe
                                                                                                                  v1))))))))))
                                                                                    (let v5
                                                                                           = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                                                  (coe
                                                                                                     v0)) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                             erased
                                                                                             v5)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                               (coe
                                                                                                                  v1)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                     (coe
                                                                                                                        v1)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                     (coe
                                                                                                                        v1))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                     (coe
                                                                                                                        v1))))))))))
                                                                                          (coe
                                                                                             v2)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                   (coe
                                                                                                      v1)))))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Class.IsSet.du_dom_586
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        (coe
                                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                   (coe
                                                                                                      v1))))))))))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1368
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                       (coe
                                                                                          v1))))))))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         addInt
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1446
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                                            (coe
                                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                            (coe (\ v3 -> v3))
                                                            (let v3
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                             (coe v0))) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                     erased v3)
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1488
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                 (coe v0))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du_mapValues_976
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                              (coe
                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                           (coe
                                                                              (\ v4 ->
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1280
                                                                                   (coe v4)))
                                                                           (let v4
                                                                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                            (coe
                                                                                               v0))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                    erased v4)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1382
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                            (coe
                                                                                                               v1)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                            (coe
                                                                                                               v1))))))))))
                                                                                 (let v5
                                                                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                                                                                               (coe
                                                                                                  v0)) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2116
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                          erased v5)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1386
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                            (coe
                                                                                                               v1)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                  (coe
                                                                                                                     v1)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                                  (coe
                                                                                                                     v1))))))))))
                                                                                       (coe
                                                                                          v2)))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1388
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3038
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1)))))))))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.IsSet.du_dom_586
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1366
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3036
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                                (coe
                                                                                                   v1))))))))))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                    (coe
                                                                                       v1)))))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3034
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3042)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4014
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1654
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3824)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4576
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                                                 (coe v1))))))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1554
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPools'45'LedgerState_3820)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1078
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasVoteDelegs'45'LedgerState_3828)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                                                (coe v1))))))))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2024)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1252
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1242
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1244
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1246
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1248
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1266
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2014)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                                 (coe
                                    MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_348
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Class.HasEmptySet.d_'8709'_332
                                 (coe
                                    MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_342
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4522
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4018
                              (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4022
                              (coe v1)))))))))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-deterministic
d_EPOCH'45'deterministic_3916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4684 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_3916 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.ls
d_ls_3954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776
d_ls_3954 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_ls_3954 v4
du_ls_3954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776
du_ls_3954 v0 = coe v0
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.es
d_es_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
d_es_3956 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_es_3956 v3
du_es_3956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230
du_es_3956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_1986
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.govUpd
d_govUpd_3958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4514
d_govUpd_3958 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
              ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_govUpd_3958 v0 v3 v4
du_govUpd_3958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4514
du_govUpd_3958 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4566
      (coe v0) (coe v2) (coe v1)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.govSt'
d_govSt''_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3960 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_govSt''_3960 v0 v3 v4
du_govSt''_3960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_3960 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4522
      (coe du_govUpd_3958 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.ss'₁≡ss'₂
d_ss'''8321''8801'ss'''8322'_3962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ss'''8321''8801'ss'''8322'_3962 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.pPRUpd.utxoSt'
d_utxoSt''_3970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3146
d_utxoSt''_3970 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
                ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_utxoSt''_3970 v0 v3 v4
du_utxoSt''_3970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3146
du_utxoSt''_3970 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4580
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4628
         (coe v0) (coe v2) (coe du_es_3956 (coe v1))
         (coe du_govUpd_3958 (coe v0) (coe v1) (coe v2)))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.pPRUpd₁
d_pPRUpd'8321'_3972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4630
d_pPRUpd'8321'_3972 v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11
                    ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_pPRUpd'8321'_3972 v0 v3 v4 v5 v6
du_pPRUpd'8321'_3972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4630
du_pPRUpd'8321'_3972 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4682
      (coe v0) (coe du_es_3956 (coe v1)) (coe v2) (coe v3) (coe v4)
      (coe du_govUpd_3958 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.pPRUpd₂
d_pPRUpd'8322'_3980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4630
d_pPRUpd'8322'_3980 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                    ~v12 ~v13 ~v14 ~v15 v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_pPRUpd'8322'_3980 v0 v3 v4 v16 v17
du_pPRUpd'8322'_3980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4630
du_pPRUpd'8322'_3980 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4682
      (coe v0) (coe du_es_3956 (coe v1)) (coe v2) (coe v3) (coe v4)
      (coe du_govUpd_3958 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.prs'≡prs''
d_prs'''8801'prs''''_3988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_prs'''8801'prs''''_3988 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.pPRUpd₁≡pPRUpd₂
d_pPRUpd'8321''8801'pPRUpd'8322'_3990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pPRUpd'8321''8801'pPRUpd'8322'_3990 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.stakeDistrs₁≡stakeDistrs₂
d_stakeDistrs'8321''8801'stakeDistrs'8322'_4000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_stakeDistrs'8321''8801'stakeDistrs'8322'_4000 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.Γ≡Γ'
d_Γ'8801'Γ''_4004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Γ'8801'Γ''_4004 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.fut'≡fut''
d_fut'''8801'fut''''_4010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fut'''8801'fut''''_4010 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.eps'≡eps''
d_eps'''8801'eps''''_4012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3776 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1230 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3818 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1372 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_1978 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3872 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3066 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eps'''8801'eps''''_4012 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-complete
d_EPOCH'45'complete_4036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4684 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_4036 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-total'
d_EPOCH'45'total''_4044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_4044 v0 ~v1 v2 v3
  = du_EPOCH'45'total''_4044 v0 v2 v3
du_EPOCH'45'total''_4044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_4044 v0 v1 v2
  = coe du_EPOCH'45'total_3910 (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-complete'
d_EPOCH'45'complete''_4048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4002 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4684 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_4048 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational.Computational-EPOCH
d_Computational'45'EPOCH_4050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_4050 v0 ~v1
  = du_Computational'45'EPOCH_4050 v0
du_Computational'45'EPOCH_4050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_4050 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_4044 (coe v0) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.NEWEPOCH-total
d_NEWEPOCH'45'total_4078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_4078 v0 ~v1 v2 v3
  = du_NEWEPOCH'45'total_4078 v0 v2 v3
du_NEWEPOCH'45'total_4078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_4078 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                    (coe v0)))
              v1
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                    (coe v0))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                          (coe v0))
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4082
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                          (coe v0))
                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                             (coe v0))
                          (coe (1 :: Integer)))))) in
    coe
      (let v4
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4090
                 (coe v2) in
       coe
         (case coe v3 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
              -> if coe v5
                   then case coe v6 of
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                            -> case coe v4 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                                   -> case coe v2 of
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4094 v9 v10 v11 v12 v13 v14
                                          -> coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                  (coe
                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_length_268
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (4068 :: Integer)
                                                                                (15484594232291647456 ::
                                                                                   Integer)
                                                                                "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                       (coe ("r" :: Data.Text.Text))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (216 :: Integer)
                                                                                (15484594232291647456 ::
                                                                                   Integer)
                                                                                "_.Epoch"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (4068 :: Integer)
                                                                                   (15484594232291647456 ::
                                                                                      Integer)
                                                                                   "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                          (coe
                                                                             ("r"
                                                                              ::
                                                                              Data.Text.Text))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (3644 :: Integer)
                                                                                   (15484594232291647456 ::
                                                                                      Integer)
                                                                                   "Ledger.Dijkstra.Specification.Epoch._.BlocksMade"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                    (coe
                                                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (4068 ::
                                                                                         Integer)
                                                                                      (15484594232291647456 ::
                                                                                         Integer)
                                                                                      "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                             (coe
                                                                                ("r"
                                                                                 ::
                                                                                 Data.Text.Text))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (3644 ::
                                                                                         Integer)
                                                                                      (15484594232291647456 ::
                                                                                         Integer)
                                                                                      "Ledger.Dijkstra.Specification.Epoch._.BlocksMade"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (4068 ::
                                                                                            Integer)
                                                                                         (15484594232291647456 ::
                                                                                            Integer)
                                                                                         "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                (coe
                                                                                   ("r"
                                                                                    ::
                                                                                    Data.Text.Text))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (4002 ::
                                                                                            Integer)
                                                                                         (15484594232291647456 ::
                                                                                            Integer)
                                                                                         "Ledger.Dijkstra.Specification.Epoch.EpochState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (4068 ::
                                                                                               Integer)
                                                                                            (15484594232291647456 ::
                                                                                               Integer)
                                                                                            "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                   (coe
                                                                                      ("r"
                                                                                       ::
                                                                                       Data.Text.Text))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (10 ::
                                                                                               Integer)
                                                                                            (15412666033012224255 ::
                                                                                               Integer)
                                                                                            "Agda.Builtin.Maybe.Maybe"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                               (coe
                                                                                                  (MAlonzo.RTE.QName
                                                                                                     (20 ::
                                                                                                        Integer)
                                                                                                     (10880583612240331187 ::
                                                                                                        Integer)
                                                                                                     "Agda.Primitive.lzero"
                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                        MAlonzo.RTE.Unrelated)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                  (coe
                                                                                                     (MAlonzo.RTE.QName
                                                                                                        (3662 ::
                                                                                                           Integer)
                                                                                                        (15484594232291647456 ::
                                                                                                           Integer)
                                                                                                        "Ledger.Dijkstra.Specification.Epoch._.RewardUpdate"
                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (4068 ::
                                                                                                  Integer)
                                                                                               (15484594232291647456 ::
                                                                                                  Integer)
                                                                                               "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                      (coe
                                                                                         ("r"
                                                                                          ::
                                                                                          Data.Text.Text))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (4000 ::
                                                                                                  Integer)
                                                                                               (15484594232291647456 ::
                                                                                                  Integer)
                                                                                               "Ledger.Dijkstra.Specification.Epoch.PoolDelegatedStake"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4094)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v1)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v11)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    du_EPOCH'45'total''_4044
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_applyRUpd_4292
                                                                       (coe v0) (coe v8) (coe v12))
                                                                    (coe v1)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_calculatePoolDelegatedStake_4348
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3830
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4016
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                du_EPOCH'45'total''_4044
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_applyRUpd_4292
                                                                                   (coe v0) (coe v8)
                                                                                   (coe v12))
                                                                                (coe v1))))))))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_NEWEPOCH'45'New_4722
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v7)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_EPOCH'45'total''_4044 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_applyRUpd_4292
                                                              (coe v0) (coe v8) (coe v12))
                                                           (coe v1)))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> case coe v2 of
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4094 v8 v9 v10 v11 v12 v13
                                          -> coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                  (coe
                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_length_268
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (4068 :: Integer)
                                                                                (15484594232291647456 ::
                                                                                   Integer)
                                                                                "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                       (coe ("r" :: Data.Text.Text))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (216 :: Integer)
                                                                                (15484594232291647456 ::
                                                                                   Integer)
                                                                                "_.Epoch"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (4068 :: Integer)
                                                                                   (15484594232291647456 ::
                                                                                      Integer)
                                                                                   "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                          (coe
                                                                             ("r"
                                                                              ::
                                                                              Data.Text.Text))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (3644 :: Integer)
                                                                                   (15484594232291647456 ::
                                                                                      Integer)
                                                                                   "Ledger.Dijkstra.Specification.Epoch._.BlocksMade"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                    (coe
                                                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (4068 ::
                                                                                         Integer)
                                                                                      (15484594232291647456 ::
                                                                                         Integer)
                                                                                      "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                             (coe
                                                                                ("r"
                                                                                 ::
                                                                                 Data.Text.Text))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (3644 ::
                                                                                         Integer)
                                                                                      (15484594232291647456 ::
                                                                                         Integer)
                                                                                      "Ledger.Dijkstra.Specification.Epoch._.BlocksMade"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (4068 ::
                                                                                            Integer)
                                                                                         (15484594232291647456 ::
                                                                                            Integer)
                                                                                         "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                (coe
                                                                                   ("r"
                                                                                    ::
                                                                                    Data.Text.Text))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (4002 ::
                                                                                            Integer)
                                                                                         (15484594232291647456 ::
                                                                                            Integer)
                                                                                         "Ledger.Dijkstra.Specification.Epoch.EpochState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (4068 ::
                                                                                               Integer)
                                                                                            (15484594232291647456 ::
                                                                                               Integer)
                                                                                            "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                   (coe
                                                                                      ("r"
                                                                                       ::
                                                                                       Data.Text.Text))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (10 ::
                                                                                               Integer)
                                                                                            (15412666033012224255 ::
                                                                                               Integer)
                                                                                            "Agda.Builtin.Maybe.Maybe"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                               (coe
                                                                                                  (MAlonzo.RTE.QName
                                                                                                     (20 ::
                                                                                                        Integer)
                                                                                                     (10880583612240331187 ::
                                                                                                        Integer)
                                                                                                     "Agda.Primitive.lzero"
                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                        MAlonzo.RTE.Unrelated)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                  (coe
                                                                                                     (MAlonzo.RTE.QName
                                                                                                        (3662 ::
                                                                                                           Integer)
                                                                                                        (15484594232291647456 ::
                                                                                                           Integer)
                                                                                                        "Ledger.Dijkstra.Specification.Epoch._.RewardUpdate"
                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (4068 ::
                                                                                                  Integer)
                                                                                               (15484594232291647456 ::
                                                                                                  Integer)
                                                                                               "Ledger.Dijkstra.Specification.Epoch.NewEpochState"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                      (coe
                                                                                         ("r"
                                                                                          ::
                                                                                          Data.Text.Text))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (4000 ::
                                                                                                  Integer)
                                                                                               (15484594232291647456 ::
                                                                                                  Integer)
                                                                                               "Ledger.Dijkstra.Specification.Epoch.PoolDelegatedStake"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4094)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v1)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_598
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    du_EPOCH'45'total''_4044
                                                                    (coe v0) (coe v11) (coe v1)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_calculatePoolDelegatedStake_4348
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3830
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4016
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                du_EPOCH'45'total''_4044
                                                                                (coe v0) (coe v11)
                                                                                (coe v1))))))))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_NEWEPOCH'45'No'45'Reward'45'Update_4738
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v7)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_EPOCH'45'total''_4044 (coe v0)
                                                           (coe v11) (coe v1)))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError
                   else coe
                          seq (coe v6)
                          (coe
                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                             (coe
                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasCast'45'NewEpochState_4158)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4082
                                      (coe v2))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4084
                                         (coe v2))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4086
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4088
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4090
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4092
                                                  (coe v2))))))))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_NEWEPOCH'45'Not'45'New_4728))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__4710 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_4104 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3110 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_4200 v0 ~v1
  = du_Computational'45'NEWEPOCH_4200 v0
du_Computational'45'NEWEPOCH_4200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_4200 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_NEWEPOCH'45'total_4078 (coe v0) (coe v3) (coe v2)))
