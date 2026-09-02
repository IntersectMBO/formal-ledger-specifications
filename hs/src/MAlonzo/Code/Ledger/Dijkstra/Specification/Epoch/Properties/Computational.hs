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
d_Epoch_246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_Epoch_246 = erased
-- _.HasTreasury-Acnt
d_HasTreasury'45'Acnt_586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_586 ~v0 = du_HasTreasury'45'Acnt_586
du_HasTreasury'45'Acnt_586 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_586
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__3108 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3110 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState
d_EpochState_3114 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.Governance-Update
d_Governance'45'Update_3120 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.mkStakeDistrs
d_mkStakeDistrs_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3820 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3206 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1432 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1996
d_mkStakeDistrs_3224 v0 ~v1 = du_mkStakeDistrs_3224 v0
du_mkStakeDistrs_3224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3820 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3206 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1432 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_StakeDistrs_1996
du_mkStakeDistrs_3224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_mkStakeDistrs_4474
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.acnt
d_acnt_3246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_3246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.es
d_es_3248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
d_es_3248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_es_4080 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.fut
d_fut_3250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040
d_fut_3250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.ls
d_ls_3252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836
d_ls_3252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EpochState.ss
d_ss_3254 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878
d_ss_3254 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4076 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.Governance-Update.govSt'
d_govSt''_3258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4574 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_3258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4582
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.Governance-Update.removedGovActions
d_removedGovActions_3260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4574 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removedGovActions_3260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_removedGovActions_4580
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState
d_EnactState_3376 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.cc
d_cc_3426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_3426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1278 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.constitution
d_constitution_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_3428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1280
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.pparams
d_pparams_3430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_3430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1284
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.pv
d_pv_3432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_3432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1282 (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EnactState.withdrawals
d_withdrawals_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_withdrawals_1286
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasCCHotKeys-LedgerState
d_HasCCHotKeys'45'LedgerState_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1556
d_HasCCHotKeys'45'LedgerState_3452 ~v0 ~v1
  = du_HasCCHotKeys'45'LedgerState_3452
du_HasCCHotKeys'45'LedgerState_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1556
du_HasCCHotKeys'45'LedgerState_3452
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCCHotKeys'45'LedgerState_3894
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasDReps-LedgerState
d_HasDReps'45'LedgerState_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1222
d_HasDReps'45'LedgerState_3464 ~v0 ~v1
  = du_HasDReps'45'LedgerState_3464
du_HasDReps'45'LedgerState_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1222
du_HasDReps'45'LedgerState_3464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDReps'45'LedgerState_3896
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasPools-LedgerState
d_HasPools'45'LedgerState_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1596
d_HasPools'45'LedgerState_3490 ~v0 ~v1
  = du_HasPools'45'LedgerState_3490
du_HasPools'45'LedgerState_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1596
du_HasPools'45'LedgerState_3490
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPools'45'LedgerState_3880
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasVoteDelegs-LedgerState
d_HasVoteDelegs'45'LedgerState_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1106
d_HasVoteDelegs'45'LedgerState_3500 ~v0 ~v1
  = du_HasVoteDelegs'45'LedgerState_3500
du_HasVoteDelegs'45'LedgerState_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1106
du_HasVoteDelegs'45'LedgerState_3500
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasVoteDelegs'45'LedgerState_3888
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.LedgerState
d_LedgerState_3510 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.LedgerState.certState
d_certState_3562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1448
d_certState_3562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3848
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.LedgerState.govSt
d_govSt_3564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_3564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3846
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_3566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3206
d_utxoSt_3566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3844
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.PoolReapState
d_PoolReapState_3596 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.PoolReapState.acnt
d_acnt_3608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T_PoolReapState_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_acnt_3608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.PoolReapState.dState
d_dState_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T_PoolReapState_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392
d_dState_3610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.PoolReapState.pState
d_pState_3612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T_PoolReapState_3086 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412
d_pState_3612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.HasCast-RatifyEnv
d_HasCast'45'RatifyEnv_3632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyEnv_3632 ~v0 ~v1 = du_HasCast'45'RatifyEnv_3632
du_HasCast'45'RatifyEnv_3632 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyEnv_3632
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyEnv_2084
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.completeness
d_completeness_3942 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3942 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.computeProof
d_computeProof_3948 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3948 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-total
d_EPOCH'45'total_3970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_3970 v0 ~v1 v2 v3
  = du_EPOCH'45'total_3970 v0 v2 v3
du_EPOCH'45'total_3970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_3970 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasCast'45'EpochState_4216)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt''''_4698
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4742
                  (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                     (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1886)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1402
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                   (coe v1))))))))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (let v3
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1404
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1))))))))))
                                 (let v4
                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1))))))))))
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                      coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                           (coe v4))))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1))))))))))
                                                      (let v5
                                                             = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe
                                                                                          v1))))))))))
                                                            (coe v2)))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1)))))))))))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1))))))))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1408
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                         (coe v1)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                   coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                        (coe v4))))
                                             (let v4
                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1))))))))))
                                                   (let v5
                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                    (coe
                                                                                       v1))))))))))
                                                         (coe v2)))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                  (coe v1)))))))))))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                  (coe v1))))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                      (coe v1)))))))))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                   (coe v1))))))))))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                        (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                        (coe v1)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational.du_SNAP'45'total_2920
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                        (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4076
                        (coe v1))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCast'45'LedgerState_3898)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4640
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                 (coe v1))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4582
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1462
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_dState''''_4696
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4742
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1886)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1402
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1))))))))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v3
                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1404
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1))))))))))
                                                   (let v4
                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                            (coe v0))))
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1))))))))))
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                        coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                                             (coe v4))))
                                                                  (let v4
                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                   (coe
                                                                                                      v1))))))))))
                                                                        (let v5
                                                                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                         (coe
                                                                                                            v1))))))))))
                                                                              (coe v2)))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe
                                                                                          v1))))))))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1408
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                     coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                                          (coe v4))))
                                                               (let v4
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1))))))))))
                                                                     (let v5
                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                      (coe
                                                                                                         v1))))))))))
                                                                           (coe v2)))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                    (coe
                                                                                       v1))))))))))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                        (coe v1)))))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1))))))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_1888)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (let v3
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1))))))))))
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1))))))))))
                                                (coe v2)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (let v3
                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1424
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                        (coe v1))))))))))
                                             (let v4
                                                    = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1))))))))))
                                                   (coe v2)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1))))))))))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1))))))))))
                                                      (coe v2)))))
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1))))))))))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1))))))))))
                                                      (coe v2)))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_gState''_4638
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1288
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1278
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1280
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1282
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1284
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total''_3246
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyEnv_2084)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_mkStakeDistrs_4474
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3888
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational.du_SNAP'45'total_2920
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4076
                                                (coe v1)))))
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4640
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                (coe v1)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4582
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1764
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGState'45'LedgerState_3882)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1230
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDReps'45'LedgerState_3896)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1564
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCCHotKeys'45'LedgerState_3894)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Base.d_TreasuryOf_88
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt''''_4698
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4742
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1886)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1402
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe
                                                                                          v1))))))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (let v3
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1404
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1))))))))))
                                                                     (let v4
                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                 (coe v0))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                              (coe v0))))
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1))))))))))
                                                                     (let v3
                                                                            = coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                       (coe v0))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                          (coe
                                                                                             v0))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                          coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                                                               (coe
                                                                                                  v4))))
                                                                                    (let v4
                                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                               (coe
                                                                                                                  v1)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                     (coe
                                                                                                                        v1)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                     (coe
                                                                                                                        v1))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                     (coe
                                                                                                                        v1))))))))))
                                                                                          (let v5
                                                                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                     (coe
                                                                                                                        v1)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                        (coe
                                                                                                                           v1))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                           (coe
                                                                                                                              v1)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                           (coe
                                                                                                                              v1))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                           (coe
                                                                                                                              v1))))))))))
                                                                                                (coe
                                                                                                   v2)))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                         (coe
                                                                                                            v1))))))))))))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1408
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                    (coe v0))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                       (coe v0))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                       coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                                                            (coe
                                                                                               v4))))
                                                                                 (let v4
                                                                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                            (coe
                                                                                                               v1)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                  (coe
                                                                                                                     v1)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                  (coe
                                                                                                                     v1))))))))))
                                                                                       (let v5
                                                                                              = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                  (coe
                                                                                                                     v1)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                     (coe
                                                                                                                        v1))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                        (coe
                                                                                                                           v1)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                        (coe
                                                                                                                           v1))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                        (coe
                                                                                                                           v1))))))))))
                                                                                             (coe
                                                                                                v2)))))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                      (coe
                                                                                                         v1))))))))))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                          (coe
                                                                                             v1)))))))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe
                                                                                          v1))))))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1))))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1604
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPools'45'LedgerState_3880)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1114
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasVoteDelegs'45'LedgerState_3888)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2086)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1288
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1278
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1280
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1282
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                             (coe v1))))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1284
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4582
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                    (coe v1)))))))))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_EPOCH_4768
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1886)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1402
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                              (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1))))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (let v3
                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1404
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                   (coe v1))))))))))
                        (let v4
                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                         (coe v1)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                 (coe v0))))
                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                   (coe v1))))))))))
                        (let v3
                               = coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                             coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                  (coe v4))))
                                       (let v4
                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                        (coe v1))))))))))
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                              (coe v1))))))))))
                                                   (coe v2)))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1)))))))))))
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                         (coe v0)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                            (coe v1))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                            (coe v1))))))))))))))
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1408
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                          coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                               (coe v4))))
                                    (let v4
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                               (coe v1)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                  (coe v1))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                     (coe v1))))))))))
                                          (let v5
                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                               (coe v1))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                     (coe v1)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                           (coe v1))))))))))
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                         (coe v1)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                         (coe v1)))))))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_586
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                         (coe v1)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                      (coe v0)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                         (coe v1))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                         (coe v1))))))))))))))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                        (coe
                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                 (coe v1))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                             (coe v1)))))))))))
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                              (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1))))))))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational.du_SNAP'45'total_2920
                  (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                     (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4076
                     (coe v1))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.Properties.Computational.d_POOLREAP'45'total_2678
                     (coe v0) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                              (coe v1))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1))))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.Properties.Computational.d_RATIFIES'45'total''_3246
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyEnv_2084)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_mkStakeDistrs_4474
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3888
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational.du_SNAP'45'total_2920
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4076
                                          (coe v1)))))
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4640
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4582
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1764
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasGState'45'LedgerState_3882)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1230
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDReps'45'LedgerState_3896)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1564
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasCCHotKeys'45'LedgerState_3894)
                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Base.d_TreasuryOf_88
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226)
                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt''''_4698
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4742
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                   (coe v1))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1886)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1402
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1))))))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (let v3
                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1404
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                          (coe
                                                                                             v1))))))))))
                                                               (let v4
                                                                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                        (coe v0))))
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                          (coe
                                                                                             v1))))))))))
                                                               (let v3
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                   (coe v0))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                 (coe v0))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                    (coe v0))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                    coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                                                         (coe v4))))
                                                                              (let v4
                                                                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                               (coe
                                                                                                                  v1)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                               (coe
                                                                                                                  v1))))))))))
                                                                                    (let v5
                                                                                           = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                               (coe
                                                                                                                  v1)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                     (coe
                                                                                                                        v1)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                     (coe
                                                                                                                        v1))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                     (coe
                                                                                                                        v1))))))))))
                                                                                          (coe
                                                                                             v2)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                   (coe
                                                                                                      v1)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                   (coe
                                                                                                      v1))))))))))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1408
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                           (coe v1))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                       (coe v1)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                    (coe v0)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                       (coe v1))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
                                                                                 (coe v0))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_250
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                 coe
                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236)
                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1318
                                                                                      (coe v4))))
                                                                           (let v4
                                                                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_246
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1396
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
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1422
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                      (coe
                                                                                                         v1)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                            (coe
                                                                                                               v1)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                            (coe
                                                                                                               v1))))))))))
                                                                                 (let v5
                                                                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
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
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1426
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                            (coe
                                                                                                               v1)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                  (coe
                                                                                                                     v1)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                                  (coe
                                                                                                                     v1))))))))))
                                                                                       (coe
                                                                                          v2)))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1428
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_pState_3098
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1406
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_dState_3096
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                          (coe v1)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                                (coe
                                                                                                   v1))))))))))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                        (coe v1))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                    (coe v1))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                    (coe
                                                                                       v1)))))))))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.d_acnt_3094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.du_HasCast'45'PoolReapState_3102)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_acnt_4074
                                                                     (coe v1))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1724
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3884)
                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                           (coe v1)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pState''_4636
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                              (coe v1))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                                                 (coe v1))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                                                 (coe v1))))))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                      (coe v1))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1604
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPools'45'LedgerState_3880)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1114
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasVoteDelegs'45'LedgerState_3888)
                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                                                (coe v1))))))))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasCast'45'RatifyState_2086)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.C_constructor_1288
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_cc_1278
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_constitution_1280
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pv_1282
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                                       (coe v1))))
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_pparams_1284
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.d_EnactStateOf_1302
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.du_HasEnactState'45'RatifyState_2076)
                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
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
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4582
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ls_4078
                              (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_fut_4082
                              (coe v1)))))))))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-deterministic
d_EPOCH'45'deterministic_3976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4744 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4744 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_3976 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.ls
d_ls_4014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836
d_ls_4014 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_ls_4014 v4
du_ls_4014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836
du_ls_4014 v0 = coe v0
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.es
d_es_4016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
d_es_4016 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_es_4016 v3
du_es_4016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266
du_es_4016 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.d_es_2048
      (coe v0)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.govUpd
d_govUpd_4018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4574
d_govUpd_4018 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
              ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_govUpd_4018 v0 v3 v4
du_govUpd_4018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Governance'45'Update_4574
du_govUpd_4018 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4626
      (coe v0) (coe v2) (coe v1)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.govSt'
d_govSt''_4020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_4020 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_govSt''_4020 v0 v3 v4
du_govSt''_4020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_4020 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_govSt''_4582
      (coe du_govUpd_4018 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.ss'₁≡ss'₂
d_ss'''8321''8801'ss'''8322'_4022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ss'''8321''8801'ss'''8322'_4022 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.pPRUpd.utxoSt'
d_utxoSt''_4030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3206
d_utxoSt''_4030 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
                ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_utxoSt''_4030 v0 v3 v4
du_utxoSt''_4030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3206
du_utxoSt''_4030 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_utxoSt''_4640
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4688
         (coe v0) (coe v2) (coe du_es_4016 (coe v1))
         (coe du_govUpd_4018 (coe v0) (coe v1) (coe v2)))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.pPRUpd₁
d_pPRUpd'8321'_4032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4690
d_pPRUpd'8321'_4032 v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11
                    ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_pPRUpd'8321'_4032 v0 v3 v4 v5 v6
du_pPRUpd'8321'_4032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4690
du_pPRUpd'8321'_4032 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4742
      (coe v0) (coe du_es_4016 (coe v1)) (coe v2) (coe v3) (coe v4)
      (coe du_govUpd_4018 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.pPRUpd₂
d_pPRUpd'8322'_4040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4690
d_pPRUpd'8322'_4040 v0 ~v1 ~v2 v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                    ~v12 ~v13 ~v14 ~v15 v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23
  = du_pPRUpd'8322'_4040 v0 v3 v4 v16 v17
du_pPRUpd'8322'_4040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_Post'45'POOLREAP'45'Update_4690
du_pPRUpd'8322'_4040 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_updates_4742
      (coe v0) (coe du_es_4016 (coe v1)) (coe v2) (coe v3) (coe v4)
      (coe du_govUpd_4018 (coe v0) (coe v1) (coe v2))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.prs'≡prs''
d_prs'''8801'prs''''_4048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_prs'''8801'prs''''_4048 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.pPRUpd₁≡pPRUpd₂
d_pPRUpd'8321''8801'pPRUpd'8322'_4050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pPRUpd'8321''8801'pPRUpd'8322'_4050 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.stakeDistrs₁≡stakeDistrs₂
d_stakeDistrs'8321''8801'stakeDistrs'8322'_4060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_stakeDistrs'8321''8801'stakeDistrs'8322'_4060 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.Γ≡Γ'
d_Γ'8801'Γ''_4064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Γ'8801'Γ''_4064 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.fut'≡fut''
d_fut'''8801'fut''''_4070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fut'''8801'fut''''_4070 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._._.eps'≡eps''
d_eps'''8801'eps''''_4072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3836 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Enact.T_EnactState_1266 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1392 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3878 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1412 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ratify.T_RatifyState_2040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3932 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__3126 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__80 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eps'''8801'eps''''_4072 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-complete
d_EPOCH'45'complete_4096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4744 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_4096 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-total'
d_EPOCH'45'total''_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_4104 v0 ~v1 v2 v3
  = du_EPOCH'45'total''_4104 v0 v2 v3
du_EPOCH'45'total''_4104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_4104 v0 v1 v2
  = coe du_EPOCH'45'total_3970 (coe v0) (coe v1) (coe v2)
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.EPOCH-complete'
d_EPOCH'45'complete''_4108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_EpochState_4062 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__4744 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_4108 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational.Computational-EPOCH
d_Computational'45'EPOCH_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_4110 v0 ~v1
  = du_Computational'45'EPOCH_4110 v0
du_Computational'45'EPOCH_4110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_4110 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_4104 (coe v0) (coe v2) (coe v3)))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.NEWEPOCH-total
d_NEWEPOCH'45'total_4138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_4138 v0 ~v1 v2 v3
  = du_NEWEPOCH'45'total_4138 v0 v2 v3
du_NEWEPOCH'45'total_4138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4128 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_4138 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
                    (coe v0)))
              v1
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
                    (coe v0))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
                          (coe v0))
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4142
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
                          (coe v0))
                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1398
                             (coe v0))
                          (coe (1 :: Integer)))))) in
    coe
      (let v4
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4150
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
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4154 v9 v10 v11 v12 v13 v14
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
                                                                                (4128 :: Integer)
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
                                                                                (242 :: Integer)
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
                                                                                   (4128 :: Integer)
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
                                                                                   (3704 :: Integer)
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
                                                                                      (4128 ::
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
                                                                                      (3704 ::
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
                                                                                         (4128 ::
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
                                                                                         (4062 ::
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
                                                                                            (4128 ::
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
                                                                                                        (3722 ::
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
                                                                                               (4128 ::
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
                                                                                               (4060 ::
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4154)))
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
                                                                    du_EPOCH'45'total''_4104
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_applyRUpd_4352
                                                                       (coe v0) (coe v8) (coe v12))
                                                                    (coe v1)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_calculatePoolDelegatedStake_4408
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3890
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4076
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                du_EPOCH'45'total''_4104
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_applyRUpd_4352
                                                                                   (coe v0) (coe v8)
                                                                                   (coe v12))
                                                                                (coe v1))))))))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_NEWEPOCH'45'New_4782
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v7)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_EPOCH'45'total''_4104 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_applyRUpd_4352
                                                              (coe v0) (coe v8) (coe v12))
                                                           (coe v1)))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> case coe v2 of
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4154 v8 v9 v10 v11 v12 v13
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
                                                                                (4128 :: Integer)
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
                                                                                (242 :: Integer)
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
                                                                                   (4128 :: Integer)
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
                                                                                   (3704 :: Integer)
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
                                                                                      (4128 ::
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
                                                                                      (3704 ::
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
                                                                                         (4128 ::
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
                                                                                         (4062 ::
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
                                                                                            (4128 ::
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
                                                                                                        (3722 ::
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
                                                                                               (4128 ::
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
                                                                                               (4060 ::
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
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_constructor_4154)))
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
                                                                    du_EPOCH'45'total''_4104
                                                                    (coe v0) (coe v11) (coe v1)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_calculatePoolDelegatedStake_4408
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3890
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ss_4076
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                du_EPOCH'45'total''_4104
                                                                                (coe v0) (coe v11)
                                                                                (coe v1))))))))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_NEWEPOCH'45'No'45'Reward'45'Update_4798
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v7)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_EPOCH'45'total''_4104 (coe v0)
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
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.du_HasCast'45'NewEpochState_4218)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_lastEpoch_4142
                                      (coe v2))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bprev_4144
                                         (coe v2))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_bcur_4146
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_epochState_4148
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_ru_4150
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.d_pd_4152
                                                  (coe v2))))))))
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.C_NEWEPOCH'45'Not'45'New_4788))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_4164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4128 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T_NewEpochState_4128 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__4770 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_4164 = erased
-- Ledger.Dijkstra.Specification.Epoch.Properties.Computational.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3170 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_4260 v0 ~v1
  = du_Computational'45'NEWEPOCH_4260 v0
du_Computational'45'NEWEPOCH_4260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_4260 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_NEWEPOCH'45'total_4138 (coe v0) (coe v3) (coe v2)))
