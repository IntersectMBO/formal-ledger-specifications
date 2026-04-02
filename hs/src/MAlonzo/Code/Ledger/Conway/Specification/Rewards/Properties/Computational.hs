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
d_LState_2064 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.certState
d_certState_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_certState_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2958
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.govSt
d_govSt_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2956
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.utxoSt
d_utxoSt_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_utxoSt_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2954
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2110 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots
d_Snapshots_2140 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.feeSS
d_feeSS_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  Integer
d_feeSS_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3102
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.go
d_go_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028
d_go_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3100 (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.mark
d_mark_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028
d_mark_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3096
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.set
d_set_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_3028
d_set_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3098
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.completeness
d_completeness_2214 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2214 = erased
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.computeProof
d_computeProof_2220 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2220 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-total
d_SNAP'45'total_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2242 v0 ~v1 v2 v3 = du_SNAP'45'total_2242 v0 v2 v3
du_SNAP'45'total_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2242 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3128)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_3056
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3406
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxO'45'LState_2984)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1490
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2996)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1510
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPState'45'LState_2998)
                  v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3096
                  (coe v2))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3098
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasFees'45'LState_3004)
                     v1)))))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_SNAP_3144)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-complete
d_SNAP'45'complete_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3140 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2246 = erased
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-deterministic
d_SNAP'45'deterministic_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2946 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3140 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3140 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic_2254 = erased
-- Ledger.Conway.Specification.Rewards.Properties.Computational.Computational-SNAP
d_Computational'45'SNAP_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SNAP_2256 v0 ~v1
  = du_Computational'45'SNAP_2256 v0
du_Computational'45'SNAP_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'SNAP_2256 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_SNAP'45'total_2242 (coe v0) (coe v1) (coe v2)))
