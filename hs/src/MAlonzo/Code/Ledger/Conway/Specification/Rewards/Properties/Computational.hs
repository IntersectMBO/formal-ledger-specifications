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

module MAlonzo.Code.Ledger.Conway.Specification.Rewards.Properties.Computational where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base

-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState
d_LState_2090 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.certState
d_certState_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460
d_certState_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2976
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.govSt
d_govSt_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2974
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.utxoSt
d_utxoSt_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_utxoSt_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2972
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2136 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots
d_Snapshots_2166 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.feeSS
d_feeSS_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  Integer
d_feeSS_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3120
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.go
d_go_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3046
d_go_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3118 (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.mark
d_mark_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3046
d_mark_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3114
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.set
d_set_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3046
d_set_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3116
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.completeness
d_completeness_2240 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2240 = erased
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.computeProof
d_computeProof_2246 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2246 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-total
d_SNAP'45'total_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2268 v0 ~v1 v2 v3 = du_SNAP'45'total_2268 v0 v2 v3
du_SNAP'45'total_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2268 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_52
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3146)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3074
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3426
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxO'45'LState_3002)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1504
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_3014)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1524
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPState'45'LState_3016)
                  v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3114
                  (coe v2))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3116
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasFees'45'LState_3022)
                     v1)))))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_SNAP_3162)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-complete
d_SNAP'45'complete_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3158 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2272 = erased
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-deterministic
d_SNAP'45'deterministic_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2964 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3104 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3158 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3158 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic_2280 = erased
-- Ledger.Conway.Specification.Rewards.Properties.Computational.Computational-SNAP
d_Computational'45'SNAP_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SNAP_2282 v0 ~v1
  = du_Computational'45'SNAP_2282 v0
du_Computational'45'SNAP_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'SNAP_2282 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_SNAP'45'total_2268 (coe v0) (coe v1) (coe v2)))
