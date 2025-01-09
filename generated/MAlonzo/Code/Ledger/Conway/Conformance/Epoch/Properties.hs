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

module MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Epoch
d_Epoch_148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_148 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__1484 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Epoch.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1486 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Epoch.Properties._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__1488 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState
d_EpochState_1492 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.NewEpochState
d_NewEpochState_1500 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshot
d_Snapshot_1506 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots
d_Snapshots_1508 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.acnt
d_acnt_1550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.es
d_es_1552 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_es_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2312 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.fut
d_fut_1554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984
d_fut_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.ls
d_ls_1556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2172
d_ls_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.ss
d_ss_1558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274
d_ss_1558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.NewEpochState.epochState
d_epochState_1562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2318 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294
d_epochState_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2328
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.NewEpochState.lastEpoch
d_lastEpoch_1564 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2318 ->
  AgdaAny
d_lastEpoch_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2326
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.NewEpochState.ru
d_ru_1566 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2318 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2234
d_ru_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2330 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshot.delegations
d_delegations_1582 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2270
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshot.stake
d_stake_1584 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2268 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots.feeSS
d_feeSS_1588 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  Integer
d_feeSS_1588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2290 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots.go
d_go_1590 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2262
d_go_1590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2288 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots.mark
d_mark_1592 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2262
d_mark_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots.set
d_set_1594 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2262
d_set_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2286 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.LState
d_LState_1610 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.LState.certState
d_certState_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2172 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1068
d_certState_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.LState.govSt
d_govSt_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2172 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.LState.utxoSt
d_utxoSt_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2172 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1920
d_utxoSt_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.completeness
d_completeness_2034 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2034 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._.computeProof
d_computeProof_2040 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2040 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.SNAP-total
d_SNAP'45'total_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2172 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2062 v0 ~v1 v2 v3 = du_SNAP'45'total_2062 v0 v2 v3
du_SNAP'45'total_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2172 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2062 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2292
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_stakeDistr_2442
            (coe v0)
            (let v3
                   = coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_mkGeneralizeTel_23707
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2286 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2288 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2290
                          (coe v2)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Utxo.d_utxo_1930
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_'46'generalizedField'45'lstate_23695
                        (coe v3)))))
            (let v3
                   = coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_mkGeneralizeTel_23707
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2286 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2288 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2290
                          (coe v2)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_'46'generalizedField'45'lstate_23695
                        (coe v3))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2286 (coe v2))
         (let v3
                = coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_mkGeneralizeTel_23707
                    (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284 (coe v2))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2286 (coe v2))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2288 (coe v2))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2290
                       (coe v2)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Utxo.d_fees_1932
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_'46'generalizedField'45'lstate_23695
                     (coe v3))))))
      (coe MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_SNAP_2526)
-- Ledger.Conway.Conformance.Epoch.Properties._.SNAP-complete
d_SNAP'45'complete_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2172 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2496 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2066 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._.es
d_es_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_es_2116 ~v0 ~v1 v2 ~v3 = du_es_2116 v2
du_es_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_es_2116 v0
  = coe
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2145
      (coe
         MAlonzo.Code.Ledger.Enact.d_cc_838
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1992
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_constitution_840
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1992
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pv_842
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1992
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pparams_844
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1992
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Conformance.Epoch.Properties._.govSt'
d_govSt''_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2118 v0 ~v1 v2 ~v3 = du_govSt''_2118 v0 v2
du_govSt''_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2118 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_filter_664
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (coe
                       MAlonzo.Code.Class.IsSet.d_toSet_490
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_398
                          (MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                          (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                (coe v1))))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1)))
-- Ledger.Conway.Conformance.Epoch.Properties._.EPOCH-total
d_EPOCH'45'total_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_2124 v0 ~v1 v2 v3
  = du_EPOCH'45'total_2124 v0 v2 v3
du_EPOCH'45'total_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_2124 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2316
         (coe
            MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154
            (coe
               addInt
               (coe
                  addInt
                  (coe
                     MAlonzo.Code.Ledger.Utxo.d_donations_1936
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                        (coe
                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v3 -> v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                 (coe
                                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                                 (let v3
                                        = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_398
                                       (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
                                       (\ v4 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v4))))
                                       (let v4
                                              = let v4
                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe v4))) in
                                        coe
                                          (let v5
                                                 = MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                        (coe v1)) in
                                           coe
                                             (let v6
                                                    = \ v6 ->
                                                        let v7
                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_map_398
                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                (coe v7))
                                                             (\ v8 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v6)))
                                                                  (coe v8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                (let v8
                                                                       = let v8
                                                                               = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                   (coe v0) in
                                                                         coe
                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                              (coe v8)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased v8)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                         (coe
                                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v6)))))))) in
                                              coe (coe v4 v6 v5))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_846
                              (coe
                                 MAlonzo.Code.Ledger.Ratify.d_es_1992
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                        (coe
                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                        (coe
                           MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                        (coe (\ v3 -> v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1690
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                 (coe
                                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                    (coe
                                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                          (coe v0)))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                                    (let v3
                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_map_398
                                          (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
                                          (\ v4 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v4))))
                                          (let v4
                                                 = let v4
                                                         = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe v4))) in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                           (coe v1)) in
                                              coe
                                                (let v6
                                                       = \ v6 ->
                                                           let v7
                                                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_map_398
                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe v7))
                                                                (\ v8 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v6)))
                                                                     (coe v8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                   (let v8
                                                                          = let v8
                                                                                  = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                      (coe v0) in
                                                                            coe
                                                                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                 (coe v8)) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                            erased v8)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                            (coe
                                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v6)))))))) in
                                                 coe (coe v4 v6 v5))))))))
                              (MAlonzo.Code.Ledger.Enact.d_withdrawals_846
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1992
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                       (coe v1)))))
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                      (coe
                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                            (coe v0))))
                                   (coe v3)
                                   (let v4
                                          = MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                               MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                                                     (let v5
                                                            = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_map_398
                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe v5))
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v6))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v6))))
                                                           (let v6
                                                                  = let v6
                                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe v6))) in
                                                            coe
                                                              (let v7
                                                                     = MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                            (coe v1)) in
                                                               coe
                                                                 (let v8
                                                                        = \ v8 ->
                                                                            let v9
                                                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_map_398
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                    (coe v9))
                                                                                 (\ v10 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                            (coe
                                                                                               v8)))
                                                                                      (coe v10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                    (let v10
                                                                                           = let v10
                                                                                                   = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                       (coe
                                                                                                          v0) in
                                                                                             coe
                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                  (coe
                                                                                                     v10)) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                             erased
                                                                                             v10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                   (coe
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v8)))))))) in
                                                                  coe (coe v6 v8 v7))))))))
                                               (MAlonzo.Code.Ledger.Enact.d_withdrawals_846
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ratify.d_es_1992
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_toRwdAddr_2380
                              (coe v0))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1046
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                          (coe v1))))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                  (MAlonzo.Code.Ledger.PParams.d_treasury_150
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306 (coe v1)))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                        (coe
                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                     (coe MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                     (coe (\ v3 -> v3))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_withdrawals_846
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                              (coe v1)))))))
            (coe
               MAlonzo.Code.Ledger.PParams.d_reserves_152
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306
                  (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_SNAP'45'total_2062 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2186
            (coe
               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1938
               (coe
                  MAlonzo.Code.Ledger.Utxo.d_utxo_1930
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))))
               (coe
                  MAlonzo.Code.Ledger.Utxo.d_fees_1932
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))))
               (let v3
                      = let v3
                              = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322 (coe v0) in
                        coe
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                             (coe v3)) in
                coe
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased v3)
                     (coe
                        MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))))
                     (let v4
                            = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_398
                           (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v4))
                           (\ v5 ->
                              let v6 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5) in
                              coe (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                           (let v5
                                  = let v5
                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                    coe
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                                         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v5))) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                            (coe v1)) in
                               coe
                                 (let v7
                                        = \ v7 ->
                                            let v8
                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_map_398
                                                 (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v8))
                                                 (\ v9 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v7)))
                                                      (coe v9))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                    (let v9
                                                           = let v9
                                                                   = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                       (coe v0) in
                                                             coe
                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                  (coe v9)) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                             erased v9)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                   (coe v1))))
                                                          (coe
                                                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                             (coe
                                                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v7)))))))) in
                                  coe (coe v5 v7 v6))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                  MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
            (coe
               MAlonzo.Code.Data.List.Base.du_filter_664
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                          (coe
                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe
                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                             (coe
                                MAlonzo.Code.Class.IsSet.d_toSet_490
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                                (let v4
                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_398
                                      (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v4))
                                      (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                      (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                            (coe v1)))))))
                          (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1082
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1050
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1044
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                     (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1046
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1)))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1690
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                 (coe
                                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                                 (let v3
                                        = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_398
                                       (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
                                       (\ v4 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v4))))
                                       (let v4
                                              = let v4
                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe v4))) in
                                        coe
                                          (let v5
                                                 = MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                        (coe v1)) in
                                           coe
                                             (let v6
                                                    = \ v6 ->
                                                        let v7
                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_map_398
                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                (coe v7))
                                                             (\ v8 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v6)))
                                                                  (coe v8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                (let v8
                                                                       = let v8
                                                                               = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                   (coe v0) in
                                                                         coe
                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                              (coe v8)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased v8)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                         (coe
                                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v6)))))))) in
                                              coe (coe v4 v6 v5))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_846
                              (coe
                                 MAlonzo.Code.Ledger.Ratify.d_es_1992
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                    (coe v1)))))
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                   (coe
                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                                (coe v3)
                                (let v4
                                       = MAlonzo.Code.Axiom.Set.d_th_1470
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1196
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1220
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                                                  (let v5
                                                         = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_map_398
                                                        (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v5))
                                                        (\ v6 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v6))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v6))))
                                                        (let v6
                                                               = let v6
                                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe v6))) in
                                                         coe
                                                           (let v7
                                                                  = MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                         (coe v1)) in
                                                            coe
                                                              (let v8
                                                                     = \ v8 ->
                                                                         let v9
                                                                               = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du_map_398
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                 (coe v9))
                                                                              (\ v10 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe v8)))
                                                                                   (coe v10))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                 (let v10
                                                                                        = let v10
                                                                                                = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                    (coe
                                                                                                       v0) in
                                                                                          coe
                                                                                            (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                               (coe
                                                                                                  v10)) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                          erased
                                                                                          v10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                (coe
                                                                                                   v1))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v8)))))))) in
                                                               coe (coe v6 v8 v7))))))))
                                            (MAlonzo.Code.Ledger.Enact.d_withdrawals_846
                                               (coe
                                                  MAlonzo.Code.Ledger.Ratify.d_es_1992
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                     (coe v1))))))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_toRwdAddr_2380
                           (coe v0))
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_548
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1046
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                       (coe v1))))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1048
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                              (coe v1))))))
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_912
                  (let v3
                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v3)
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_pools_908
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                    (coe v1)))))
                        (let v4
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1734
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v4)
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_retiring_910
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                          (coe v1)))))
                              (coe v2)))))
                  (let v3
                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v3)
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_retiring_910
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                    (coe v1)))))
                        (let v4
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1734
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v4)
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_retiring_910
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                          (coe v1)))))
                              (coe v2))))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_1066
                  (let v3 = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94 in
                   coe
                     (coe
                        MAlonzo.Code.Class.ToBool.du_if_then_else__46 (coe v3)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_null_262
                           (coe
                              MAlonzo.Code.Data.List.Base.du_filter_664
                              (coe
                                 (\ v4 ->
                                    coe
                                      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
                                               (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180
                                                  (coe v0))
                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                            (coe
                                               MAlonzo.Code.Class.IsSet.d_toSet_490
                                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                                               (let v5
                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_map_398
                                                     (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v5))
                                                     (\ v6 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v6))
                                                     (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                           (coe v1)))))))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Level.C_lift_20
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Class.HasAdd.Core.d__'43'__14
                                   (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                                      (MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504
                                            (coe v0)))
                                      (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1060
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                            (coe v1)))))))
                        (coe
                           (\ v4 ->
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1060
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                         (coe v1))))))))
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1220 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v3)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1062
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Enact.du_ccCreds_848
                           (coe
                              MAlonzo.Code.Ledger.Enact.d_cc_838
                              (coe
                                 MAlonzo.Code.Ledger.Ratify.d_es_1992
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                    (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1064
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                              (coe v1))))))))
         (coe
            MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2145
            (coe
               MAlonzo.Code.Ledger.Enact.d_cc_838
               (coe
                  MAlonzo.Code.Ledger.Ratify.d_es_1992
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_constitution_840
               (coe
                  MAlonzo.Code.Ledger.Ratify.d_es_1992
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pv_842
               (coe
                  MAlonzo.Code.Ledger.Ratify.d_es_1992
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pparams_844
               (coe
                  MAlonzo.Code.Ledger.Ratify.d_es_1992
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
            (coe
               MAlonzo.Code.Class.HasEmptySet.d_'8709'_306
               (coe
                  MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_320
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total''_1952
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11485
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_mkStakeDistrs_2486
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              du_SNAP'45'total_2062 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308 (coe v1)))))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_filter_664
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                (coe
                                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased
                                   (coe
                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                         (coe
                                            (\ v4 v5 ->
                                               coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                 erased
                                                 (\ v6 ->
                                                    coe
                                                      MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                      (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                    (coe eqInt (coe v4) (coe v5))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                       (coe eqInt (coe v4) (coe v5))))))))
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_replacement_208
                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         erased erased
                                         (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                               (coe v1))))))
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              MAlonzo.Code.Axiom.Set.d_specification_186
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              erased erased
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                          (coe v1)))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                 (MAlonzo.Code.Axiom.Set.d_sp_162
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                 erased erased erased
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                    (MAlonzo.Code.Axiom.Set.d_sp_162
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                    erased erased
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased
                                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                             (coe v0)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_replacement_208
                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             erased erased
                                             (\ v3 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v3)))
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_unions_196
                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_replacement_208
                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         erased erased
                                                         (\ v3 ->
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 erased erased
                                                                 (\ v4 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe v3)))
                                                                      (coe v4))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_specification_186
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased erased
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                   (coe v1)))))
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                          (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                          erased erased erased
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                             erased
                                                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                   (coe v0)))
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               v3)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                          (\ v4 ->
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v4)))))))
                                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                               (coe v1)))))))))))
                                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))
                        (coe
                           (\ v3 v4 v5 v6 v7 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                         (coe v1))))
                                v3 v4 v5
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.Function.Bundles.d_from_1726
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_specification_186
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            erased erased
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                        (coe v1)))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                               (MAlonzo.Code.Axiom.Set.d_sp_162
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                               erased erased erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                  (MAlonzo.Code.Axiom.Set.d_sp_162
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased
                                                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                           (coe v0)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_replacement_208
                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (\ v8 ->
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v8)))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_unions_196
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 erased
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased erased
                                                                       (\ v8 ->
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               erased erased
                                                                               (\ v9 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v8)))
                                                                                    (coe v9))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                 (coe
                                                                                                    v1)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                        erased
                                                                                        erased
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             v8)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                        (\ v9 ->
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v9)))))))
                                                                       (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                             (coe v1)))))))))))
                                               (\ v8 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v8))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                            (coe v4)))
                                      v6))
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.Function.Bundles.d_from_1726
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_specification_186
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            erased erased
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                        (coe v1)))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                               (MAlonzo.Code.Axiom.Set.d_sp_162
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                               erased erased erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                  (MAlonzo.Code.Axiom.Set.d_sp_162
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1470
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased
                                                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                           (coe v0)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_replacement_208
                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (\ v8 ->
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v8)))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_unions_196
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 erased
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased erased
                                                                       (\ v8 ->
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               erased erased
                                                                               (\ v9 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v8)))
                                                                                    (coe v9))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                 (coe
                                                                                                    v1)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                        erased
                                                                                        erased
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             v8)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                        (\ v9 ->
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v9)))))))
                                                                       (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                             (coe v1)))))))))))
                                               (\ v8 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v8))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                            (coe v5)))
                                      v7)))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                 (coe v1))))))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1060
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1062
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_treasury_150
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_pools_908
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                              (coe v1))))))
               (coe
                  MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1998
                  (coe
                     MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2145
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_cc_838
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_constitution_840
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_pv_842
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_pparams_844
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              MAlonzo.Code.Axiom.Set.d_listing_216
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           (\ v3 v4 v5 v6 v7 ->
                              coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Axiom.Set.d_listing_216
                        (MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_664
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                          (coe
                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                   (coe
                                      (\ v4 v5 ->
                                         coe
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                           erased
                                           (\ v6 ->
                                              coe
                                                MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                (coe v4))
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                              (coe eqInt (coe v4) (coe v5))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                 (coe eqInt (coe v4) (coe v5))))))))
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_replacement_208
                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased erased
                                   (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                   (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                         (coe v1))))))
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                        (coe v1)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_EPOCH_2602
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total''_1952
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11485
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_mkStakeDistrs_2486
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              du_SNAP'45'total_2062 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308 (coe v1)))))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_filter_664
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                (coe
                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                         erased
                                         (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180
                                            (coe v0))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                      (coe
                                         MAlonzo.Code.Class.IsSet.d_toSet_490
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                                         (let v4
                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_398
                                               (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v4))
                                               (\ v5 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                               (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                     (coe v1)))))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))))
                     (let v3
                            = let v3
                                    = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                        (coe v0) in
                              coe
                                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                   (coe v3)) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased v3)
                           (coe
                              MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                    (coe v1))))
                           (let v4
                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_398
                                 (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v4))
                                 (\ v5 ->
                                    let v6 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5) in
                                    coe (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                                 (let v5
                                        = let v5
                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_concatMap'738'_508
                                               (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v5))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1)) in
                                     coe
                                       (let v7
                                              = \ v7 ->
                                                  let v8
                                                        = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_map_398
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v8))
                                                       (\ v9 ->
                                                          coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v7)))
                                                            (coe v9))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                          (let v9
                                                                 = let v9
                                                                         = MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                             (coe v0) in
                                                                   coe
                                                                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                        (coe v9)) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                   erased v9)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                         (coe v1))))
                                                                (coe
                                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_310
                                                                   (coe
                                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_318
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v7)))))))) in
                                        coe (coe v5 v7 v6))))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                 (coe v1))))))
                  (coe v2)
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_mkGeneralizeTel_30835
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))
                             (coe v2)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306 (coe v1))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   du_SNAP'45'total_2062 (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                      (coe v1))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308
                                      (coe v1))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total''_1952
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11485
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_mkStakeDistrs_2486
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_SNAP'45'total_2062 (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_filter_664
                                            (coe
                                               (\ v3 ->
                                                  coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180
                                                             (coe v0))
                                                          (coe
                                                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                             (coe
                                                                (\ v4 v5 ->
                                                                   coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                     erased
                                                                     (\ v6 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                          (coe v4))
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                        (coe
                                                                           eqInt (coe v4) (coe v5))
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                           (coe
                                                                              eqInt (coe v4)
                                                                              (coe v5))))))))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v3))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_replacement_208
                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (\ v4 ->
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v4))
                                                             (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                   (coe v1))))))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_186
                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                              (coe v1)))))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                     (MAlonzo.Code.Axiom.Set.d_sp_162
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     erased erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                        (MAlonzo.Code.Axiom.Set.d_sp_162
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                           erased
                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                 (coe v0)))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 erased erased
                                                                 (\ v3 ->
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v3)))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_unions_196
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased erased
                                                                             (\ v3 ->
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased erased
                                                                                     (\ v4 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v3)))
                                                                                          (coe v4))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                       (coe
                                                                                                          v1)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   v3)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                              (\ v4 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v4)))))))
                                                                             (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                                   (coe
                                                                                      v1)))))))))))
                                                     (\ v3 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v3)))))
                                            (coe
                                               (\ v3 v4 v5 v6 v7 ->
                                                  coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                             (coe v1))))
                                                    v3 v4 v5
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.Function.Bundles.d_from_1726
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_specification_186
                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased erased
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                            (coe v1)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                   (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                   erased erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                      (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased
                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                               (coe v0)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               erased erased
                                                                               (\ v8 ->
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_unions_196
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (\ v8 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v9 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v8)))
                                                                                                        (coe
                                                                                                           v9))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         erased
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                            (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                               erased
                                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                              (coe
                                                                                                                                 v8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                            (\ v9 ->
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v9)))))))
                                                                                           (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                                                 (coe
                                                                                                    v1)))))))))))
                                                                   (\ v8 ->
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v3) (coe v4)))
                                                          v6))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.Function.Bundles.d_from_1726
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_specification_186
                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased erased
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                            (coe v1)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                   (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                   erased erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                      (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased
                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                               (coe v0)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               erased erased
                                                                               (\ v8 ->
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_unions_196
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (\ v8 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v9 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v8)))
                                                                                                        (coe
                                                                                                           v9))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         erased
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                            (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                               erased
                                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                              (coe
                                                                                                                                 v8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                            (\ v9 ->
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v9)))))))
                                                                                           (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                                                 (coe
                                                                                                    v1)))))))))))
                                                                   (\ v8 ->
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v3) (coe v5)))
                                                          v7)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                     (coe v1))))))
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1060
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1062
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_treasury_150
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_pools_908
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1))))))
                                   (coe
                                      MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1998
                                      (coe
                                         MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2145
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_cc_838
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_1992
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_constitution_840
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_1992
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_pv_842
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_1992
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_pparams_844
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_1992
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_216
                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                            (coe
                                               (\ v3 v4 v5 v6 v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_listing_216
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            erased
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_filter_664
                                      (coe
                                         (\ v3 ->
                                            coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                       (coe
                                                          (\ v4 v5 ->
                                                             coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                               erased
                                                               (\ v6 ->
                                                                  coe
                                                                    MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                    (coe v4))
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                  (coe eqInt (coe v4) (coe v5))
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                     (coe
                                                                        eqInt (coe v4)
                                                                        (coe v5))))))))
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_replacement_208
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       erased erased
                                                       (\ v4 ->
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v4))
                                                       (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                             (coe v1))))))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                            (coe v1))))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308 (coe v1))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2312 (coe v1)) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1060
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_'46'generalizedField'45'ls_30819
                                 (coe v3))))))
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_mkGeneralizeTel_30835
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))
                             (coe v2)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306 (coe v1))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   du_SNAP'45'total_2062 (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                      (coe v1))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308
                                      (coe v1))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total''_1952
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11485
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_mkStakeDistrs_2486
                                         (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2284
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_SNAP'45'total_2062 (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_filter_664
                                            (coe
                                               (\ v3 ->
                                                  coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180
                                                             (coe v0))
                                                          (coe
                                                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                             (coe
                                                                (\ v4 v5 ->
                                                                   coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                     erased
                                                                     (\ v6 ->
                                                                        coe
                                                                          MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                          (coe v4))
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                        (coe
                                                                           eqInt (coe v4) (coe v5))
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                           (coe
                                                                              eqInt (coe v4)
                                                                              (coe v5))))))))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v3))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_replacement_208
                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (\ v4 ->
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v4))
                                                             (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                   (coe v1))))))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_186
                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                              (coe v1)))))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                     (MAlonzo.Code.Axiom.Set.d_sp_162
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1470
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     erased erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                        (MAlonzo.Code.Axiom.Set.d_sp_162
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                           erased
                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                 (coe v0)))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 erased erased
                                                                 (\ v3 ->
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v3)))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_unions_196
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased erased
                                                                             (\ v3 ->
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased erased
                                                                                     (\ v4 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v3)))
                                                                                          (coe v4))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                       (coe
                                                                                                          v1)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   v3)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                              (\ v4 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v4)))))))
                                                                             (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                                   (coe
                                                                                      v1)))))))))))
                                                     (\ v3 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v3)))))
                                            (coe
                                               (\ v3 v4 v5 v6 v7 ->
                                                  coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                             (coe v1))))
                                                    v3 v4 v5
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.Function.Bundles.d_from_1726
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_specification_186
                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased erased
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                            (coe v1)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                   (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                   erased erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                      (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased
                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                               (coe v0)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               erased erased
                                                                               (\ v8 ->
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_unions_196
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (\ v8 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v9 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v8)))
                                                                                                        (coe
                                                                                                           v9))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         erased
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                            (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                               erased
                                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                              (coe
                                                                                                                                 v8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                            (\ v9 ->
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v9)))))))
                                                                                           (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                                                 (coe
                                                                                                    v1)))))))))))
                                                                   (\ v8 ->
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v3) (coe v4)))
                                                          v6))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.Function.Bundles.d_from_1726
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_specification_186
                                                                (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased erased
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                            (coe v1)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                   (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                   erased erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                      (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased
                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                               (coe v0)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               erased erased
                                                                               (\ v8 ->
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_unions_196
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (\ v8 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v9 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_790
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v8)))
                                                                                                        (coe
                                                                                                           v9))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         erased
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1934
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2180
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                            (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                               erased
                                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_822
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2322
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_818
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                              (coe
                                                                                                                                 v8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                                                            (\ v9 ->
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v9)))))))
                                                                                           (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                                                                 (coe
                                                                                                    v1)))))))))))
                                                                   (\ v8 ->
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v3) (coe v5)))
                                                          v7)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                     (coe v1))))))
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1060
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1062
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_treasury_150
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_pools_908
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                                  (coe v1))))))
                                   (coe
                                      MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1998
                                      (coe
                                         MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2145
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_cc_838
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_1992
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_constitution_840
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_1992
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_pv_842
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_1992
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_pparams_844
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_1992
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                  (coe v1))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_216
                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                            (coe
                                               (\ v3 v4 v5 v6 v7 ->
                                                  coe
                                                    MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_listing_216
                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            erased
                                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_filter_664
                                      (coe
                                         (\ v3 ->
                                            coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                       (coe
                                                          (\ v4 v5 ->
                                                             coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                               erased
                                                               (\ v6 ->
                                                                  coe
                                                                    MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                    (coe v4))
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                  (coe eqInt (coe v4) (coe v5))
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                     (coe
                                                                        eqInt (coe v4)
                                                                        (coe v5))))))))
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_replacement_208
                                                       (MAlonzo.Code.Axiom.Set.d_th_1470
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       erased erased
                                                       (\ v4 ->
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v4))
                                                       (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                                             (coe v1))))))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                                            (coe v1))))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308 (coe v1))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2312 (coe v1)) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1062
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1080
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_'46'generalizedField'45'ls_30819
                                 (coe v3))))))
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_treasury_150
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_pools_908
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1078
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1042
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1076
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2184
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                              (coe v1))))))
               (coe
                  MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1998
                  (coe
                     MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2145
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_cc_838
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_constitution_840
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_pv_842
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_pparams_844
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1992
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v1))))
                     (coe
                        MAlonzo.Code.Class.HasEmptySet.d_'8709'_306
                        (coe
                           MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_320
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                  (coe
                     MAlonzo.Code.Class.HasEmptySet.d_'8709'_306
                     (coe
                        MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_314
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1470
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_664
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                          (coe
                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                             (coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1180 (coe v0))
                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                (coe
                                   MAlonzo.Code.Class.IsSet.d_toSet_490
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_552)
                                   (let v4
                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                    coe
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_map_398
                                         (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v4))
                                         (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1994
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314
                                               (coe v1)))))))
                             (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2182
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310
                        (coe v1))))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               du_SNAP'45'total_2062 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308 (coe v1)))))
-- Ledger.Conway.Conformance.Epoch.Properties._.EPOCH-complete
d_EPOCH'45'complete_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2528 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_2128 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._._.ty
d_ty_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2172 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1984 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2274 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2496 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2262 -> ()
d_ty_2140 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._.EPOCH-total'
d_EPOCH'45'total''_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_2150 v0 ~v1 v2 v3
  = du_EPOCH'45'total''_2150 v0 v2 v3
du_EPOCH'45'total''_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_2150 v0 v1 v2
  = coe du_EPOCH'45'total_2124 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Epoch.Properties._.EPOCH-complete'
d_EPOCH'45'complete''_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2528 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_2154 = erased
-- Ledger.Conway.Conformance.Epoch.Properties.Computational-EPOCH
d_Computational'45'EPOCH_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_2156 v0 ~v1
  = du_Computational'45'EPOCH_2156 v0
du_Computational'45'EPOCH_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_2156 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_2150 (coe v0) (coe v2) (coe v3)))
-- Ledger.Conway.Conformance.Epoch.Properties._.NEWEPOCH-total
d_NEWEPOCH'45'total_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_2184 v0 ~v1 v2 v3
  = du_NEWEPOCH'45'total_2184 v0 v2 v3
du_NEWEPOCH'45'total_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_2184 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2332 v3 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                     v1
                     (coe
                        MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
                        (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2304
                           (MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                              (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
                              v3)
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                              (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
                              (MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1504 (coe v0))
                                 (coe (1 :: Integer)))))) in
           coe
             (case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v5 of
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v10
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2332
                                               (coe v1)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     du_EPOCH'45'total''_2150 (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_applyRUpd_2388
                                                        (coe v0) (coe v10) (coe v4))
                                                     (coe v1)))
                                               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_NEWEPOCH'45'New_2608
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_EPOCH'45'total''_2150 (coe v0)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_applyRUpd_2388
                                                           (coe v0) (coe v10) (coe v4))
                                                        (coe v1)))))
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2332
                                               (coe v1)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     du_EPOCH'45'total''_2150 (coe v0) (coe v4)
                                                     (coe v1)))
                                               (coe v5))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_NEWEPOCH'45'No'45'Reward'45'Update_2612
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_EPOCH'45'total''_2150 (coe v0) (coe v4)
                                                        (coe v1)))))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_NEWEPOCH'45'Not'45'New_2610))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Properties._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2318 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2318 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2604 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_2218 = erased
-- Ledger.Conway.Conformance.Epoch.Properties.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1706 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_2328 v0 ~v1
  = du_Computational'45'NEWEPOCH_2328 v0
du_Computational'45'NEWEPOCH_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_2328 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_NEWEPOCH'45'total_2184 (coe v0) (coe v3) (coe v2)))
