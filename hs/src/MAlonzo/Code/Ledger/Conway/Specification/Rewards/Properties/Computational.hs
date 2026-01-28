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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base

-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState
d_LState_2002 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.certState
d_certState_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418
d_certState_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2872
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.govSt
d_govSt_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2870
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.LState.utxoSt
d_utxoSt_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
d_utxoSt_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2868
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2048 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots
d_Snapshots_2078 a0 a1 = ()
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.feeSS
d_feeSS_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  Integer
d_feeSS_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_3042
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.go
d_go_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2968
d_go_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_3040 (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.mark
d_mark_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2968
d_mark_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3036
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.Snapshots.set
d_set_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2968
d_set_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3038
      (coe v0)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-total
d_SNAP'45'total_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2160 v0 ~v1 v2 v3 = du_SNAP'45'total_2160 v0 v2 v3
du_SNAP'45'total_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2160 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_3068)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2996
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3326
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxO'45'LState_2898)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1462
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2910)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1482
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPState'45'LState_2912)
                  v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_3036
                  (coe v2))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_3038
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasFees'45'LState_2918)
                     v1)))))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_SNAP_3084)
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-complete
d_SNAP'45'complete_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3080 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2164 = erased
-- Ledger.Conway.Specification.Rewards.Properties.Computational._.SNAP-deterministic
d_SNAP'45'deterministic_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_3026 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3080 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__3080 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic_2172 = erased
