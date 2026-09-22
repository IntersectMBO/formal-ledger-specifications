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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base

-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState
d_LedgerState_2734 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.certState
d_certState_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1504
d_certState_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3886
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.govSt
d_govSt_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3884
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3240
d_utxoSt_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3882
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2816 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots
d_Snapshots_2846 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.feeSS
d_feeSS_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  Integer
d_feeSS_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3930
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.go
d_go_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3856
d_go_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3928
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.mark
d_mark_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3856
d_mark_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3924
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.set
d_set_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3856
d_set_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3926
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.completeness
d_completeness_2920 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2920 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.computeProof
d_computeProof_2926 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2926 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._._.SNAP-total
d_SNAP'45'total_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2952 v0 ~v1 v2 v3 = du_SNAP'45'total_2952 v0 v2 v3
du_SNAP'45'total_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2952 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasCast'45'Snapshots_3956)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_stakeDistr_3884
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3780
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3912)
                  v2)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1780
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3922)
                  v2)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1800
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPState'45'LedgerState_3924)
                  v2))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3924
                  (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3926
                     (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_50
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasFees'45'LedgerState_3930)
                     v2)))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_SNAP_3972)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._._.SNAP-complete
d_SNAP'45'complete_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3968 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2956 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.SNAP-deterministic-≡
d_SNAP'45'deterministic'45''8801'_2968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3874 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3914 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3968 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic'45''8801'_2968 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational.Computational-SNAP
d_Computational'45'SNAP_2970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3204 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SNAP_2970 v0 ~v1
  = du_Computational'45'SNAP_2970 v0
du_Computational'45'SNAP_2970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'SNAP_2970 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_SNAP'45'total_2952 (coe v0) (coe v2) (coe v1)))
