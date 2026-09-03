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
d_LedgerState_2696 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.certState
d_certState_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3824 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1420
d_certState_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_certState_3836
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.govSt
d_govSt_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3824 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_govSt_3834
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.LedgerState.utxoSt
d_utxoSt_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3824 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3194
d_utxoSt_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.d_utxoSt_3832
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2776 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots
d_Snapshots_2806 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.feeSS
d_feeSS_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  Integer
d_feeSS_2870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_feeSS_3882
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.go
d_go_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3808
d_go_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_go_3880
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.mark
d_mark_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3808
d_mark_2874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3876
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.Snapshots.set
d_set_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshot_3808
d_set_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3878
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.completeness
d_completeness_2880 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2880 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.computeProof
d_computeProof_2886 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2886 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.SNAP-total
d_SNAP'45'total_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3158 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3824 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2908 v0 ~v1 v2 v3 = du_SNAP'45'total_2908 v0 v2 v3
du_SNAP'45'total_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3824 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2908 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_HasCast'45'Snapshots_3908)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.du_stakeDistr_3836
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3696
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasUTxO'45'LedgerState_3862)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1696
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasDState'45'LedgerState_3872)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1716
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasPState'45'LedgerState_3874)
                  v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_mark_3876
                  (coe v2))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.d_set_3878
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.du_HasFees'45'LedgerState_3880)
                     v1)))))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.C_SNAP_3924)
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.SNAP-complete
d_SNAP'45'complete_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3158 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3824 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3920 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2912 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational._.SNAP-deterministic
d_SNAP'45'deterministic_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3158 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Ledger.T_LedgerState_3824 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T_Snapshots_3866 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3920 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3920 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic_2920 = erased
-- Ledger.Dijkstra.Specification.Rewards.Properties.Computational.Computational-SNAP
d_Computational'45'SNAP_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3158 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SNAP_2922 v0 ~v1
  = du_Computational'45'SNAP_2922 v0
du_Computational'45'SNAP_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'SNAP_2922 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_SNAP'45'total_2908 (coe v0) (coe v1) (coe v2)))
