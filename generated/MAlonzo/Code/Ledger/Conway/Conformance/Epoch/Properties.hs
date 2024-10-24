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
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Epoch
d_Epoch_198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_198 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__1740 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Epoch.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1742 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Epoch.Properties._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__1744 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState
d_EpochState_1748 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.NewEpochState
d_NewEpochState_1756 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshot
d_Snapshot_1762 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots
d_Snapshots_1764 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.acnt
d_acnt_1806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
d_acnt_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2296 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.es
d_es_1808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2302 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.fut
d_fut_1810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2030
d_fut_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.ls
d_ls_1812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2144
d_ls_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.EpochState.ss
d_ss_1814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264
d_ss_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2298 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.NewEpochState.epochState
d_epochState_1818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2308 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284
d_epochState_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_epochState_2318
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.NewEpochState.lastEpoch
d_lastEpoch_1820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2308 ->
  AgdaAny
d_lastEpoch_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_lastEpoch_2316
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.NewEpochState.ru
d_ru_1822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2308 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_RewardUpdate_2224
d_ru_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ru_2320 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshot.delegations
d_delegations_1838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2260
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshot.stake
d_stake_1840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2258 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots.feeSS
d_feeSS_1844 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  Integer
d_feeSS_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2280 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots.go
d_go_1846 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2252
d_go_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2278 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots.mark
d_mark_1848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2252
d_mark_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2274 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.Snapshots.set
d_set_1850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2252
d_set_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2276 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.LState
d_LState_1864 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch.Properties._.LState.certState
d_certState_1892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.LState.govSt
d_govSt_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2144 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2154 (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.LState.utxoSt
d_utxoSt_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1964
d_utxoSt_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.completeness
d_completeness_2032 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2032 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._.computeProof
d_computeProof_2038 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2038 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Epoch.Properties._.SNAP-total
d_SNAP'45'total_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2060 v0 ~v1 v2 v3 = du_SNAP'45'total_2060 v0 v2 v3
du_SNAP'45'total_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2060 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2282
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_stakeDistr_2432
            (coe v0)
            (let v3
                   = coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_mkGeneralizeTel_23349
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2274 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2276 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2278 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2280
                          (coe v2)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1974
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_'46'generalizedField'45'lstate_23337
                        (coe v3)))))
            (let v3
                   = coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_mkGeneralizeTel_23349
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2274 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2276 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2278 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2280
                          (coe v2)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_'46'generalizedField'45'lstate_23337
                        (coe v3))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2274 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2276 (coe v2))
         (let v3
                = coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_mkGeneralizeTel_23349
                    (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2274 (coe v2))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2276 (coe v2))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2278 (coe v2))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2280
                       (coe v2)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1976
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_'46'generalizedField'45'lstate_23337
                     (coe v3))))))
      (coe MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_SNAP_2516)
-- Ledger.Conway.Conformance.Epoch.Properties._.SNAP-complete
d_SNAP'45'complete_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2486 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2064 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._.es
d_es_2114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2114 ~v0 ~v1 v2 ~v3 = du_es_2114 v2
du_es_2114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
du_es_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
-- Ledger.Conway.Conformance.Epoch.Properties._.govSt'
d_govSt''_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2116 v0 ~v1 v2 ~v3 = du_govSt''_2116 v0 v2
du_govSt''_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2116 v0 v1
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
                       (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
                          (coe v0))
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
                          (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                (coe v1))))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2154
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))
-- Ledger.Conway.Conformance.Epoch.Properties._.EPOCH-total
d_EPOCH'45'total_2122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_2122 v0 ~v1 v2 v3
  = du_EPOCH'45'total_2122 v0 v2 v3
du_EPOCH'45'total_2122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_2122 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2306
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160
            (coe
               addInt
               (coe
                  addInt
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1980
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                 (coe v0))))
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
                              MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                       (coe v0))))
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
                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
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
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v6)))
                                                                  (coe v8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                (let v8
                                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                              (coe v0)) in
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
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v6)))))))) in
                                              coe (coe v4 v6 v5))))))))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                    (coe v1))))))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                 (coe v0))))
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
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                          (coe v0)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                          (coe v0))))
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
                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
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
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v6)))
                                                                     (coe v8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                   (let v8
                                                                          = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                 (coe v0)) in
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
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v6)))))))) in
                                                 coe (coe v4 v6 v5))))))))
                              (MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                       (coe v1)))))
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
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
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
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
                                                                     = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
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
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                            (coe
                                                                                               v8)))
                                                                                      (coe v10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                    (let v10
                                                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                                  (coe
                                                                                                     v0)) in
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
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v8)))))))) in
                                                                  coe (coe v6 v8 v7))))))))
                                               (MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                                        (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_toRwdAddr_2370
                              (coe v0))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_548
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                          (coe v1))))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                  (MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2296 (coe v1)))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                              (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                              (coe v0))))
                     (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                     (coe MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                     (coe (\ v3 -> v3))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                              (coe v1)))))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2296
                  (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_SNAP'45'total_2060 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2298 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2158
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1982
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1974
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1976
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))))
               (let v3
                      = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                             (coe v0)) in
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
                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))))
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
                                     = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
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
                                                         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v7)))
                                                      (coe v9))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                    (let v9
                                                           = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                  (coe v0)) in
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
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
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
                                (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
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
                                      (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                            (coe v1)))))))
                          (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2154
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                              (coe v0))))
                     (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
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
                              MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                              (coe MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                       (coe v0))))
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
                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
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
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v6)))
                                                                  (coe v8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                (let v8
                                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                              (coe v0)) in
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
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v6)))))))) in
                                              coe (coe v4 v6 v5))))))))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                    (coe v1)))))
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
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
                                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.d_CommMonoid'45'ℕ'45''43'_20)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
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
                                                                  = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
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
                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe v8)))
                                                                                   (coe v10))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                 (let v10
                                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                                               (coe
                                                                                                  v0)) in
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
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v8)))))))) in
                                                               coe (coe v6 v8 v7))))))))
                                            (MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                                     (coe v1))))))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_toRwdAddr_2370
                           (coe v0))
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_548
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1470
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                       (coe v1))))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                              (coe v1))))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870
                  (let v3
                         = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                   (coe v0))) in
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
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                    (coe v1)))))
                        (let v4
                               = MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
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
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                          (coe v1)))))
                              (coe v2)))))
                  (let v3
                         = MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                   (coe v0))) in
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
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                    (coe v1)))))
                        (let v4
                               = MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
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
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                          (coe v1)))))
                              (coe v2))))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958
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
                                               (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
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
                                                     (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                                           (coe v1)))))))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2154
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                   (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addEpoch_250
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                                      (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Number'45'Epoch_256
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                            (coe v0)))
                                      (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                            (coe v1)))))))
                        (coe
                           (\ v4 ->
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                         (coe v1))))))))
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                                   (coe v0))) in
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
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Enact.du_ccCreds_878
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                    (coe v1)))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                              (coe v1))))))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
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
               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.Properties.d_RATIFY'45'total''_2212
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11555
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_mkStakeDistrs_2476
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2274
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              du_SNAP'45'total_2060 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2298 (coe v1)))))
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
                                         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
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
                                               (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                                     (coe v1)))))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2154
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))))
                     (let v3
                            = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                   (coe v0)) in
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
                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                           = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v7)))
                                                            (coe v9))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                          (let v9
                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                        (coe v0)) in
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
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v7)))))))) in
                                        coe (coe v5 v7 v6))))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                 (coe v1))))))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2296 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                              (coe v1))))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2044
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
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
                                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
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
                                         (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                         (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                               (coe v1)))))))
                             (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2154
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                        (coe v1)))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_EPOCH_2582
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Ratify.Properties.d_RATIFY'45'total''_2212
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_RatifyEnv'46'constructor_11555
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_mkStakeDistrs_2476
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2274
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              du_SNAP'45'total_2060 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2298 (coe v1)))))
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
                                         (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
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
                                               (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                                     (coe v1)))))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2154
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))))
                     (let v3
                            = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                   (coe v0)) in
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
                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                           = MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v7)))
                                                            (coe v9))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                          (let v9
                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
                                                                        (coe v0)) in
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
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1978
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2152
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
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
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v7)))))))) in
                                        coe (coe v5 v7 v6))))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                                 (coe v1))))))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2296 (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2156
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                              (coe v1))))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2044
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2038
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304 (coe v1))))
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
                                   (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
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
                                         (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                         (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2040
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2304
                                               (coe v1)))))))
                             (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2154
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300
                        (coe v1))))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               du_SNAP'45'total_2060 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2300 (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2298 (coe v1)))))
-- Ledger.Conway.Conformance.Epoch.Properties._.EPOCH-complete
d_EPOCH'45'complete_2126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2518 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_2126 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._._.ty
d_ty_2138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2144 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2264 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2486 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2252 -> ()
d_ty_2138 = erased
-- Ledger.Conway.Conformance.Epoch.Properties._.EPOCH-total'
d_EPOCH'45'total''_2148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_2148 v0 ~v1 v2 v3
  = du_EPOCH'45'total''_2148 v0 v2 v3
du_EPOCH'45'total''_2148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_2148 v0 v1 v2
  = coe du_EPOCH'45'total_2122 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Conformance.Epoch.Properties._.EPOCH-complete'
d_EPOCH'45'complete''_2152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2518 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_2152 = erased
-- Ledger.Conway.Conformance.Epoch.Properties.Computational-EPOCH
d_Computational'45'EPOCH_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_2154 v0 ~v1
  = du_Computational'45'EPOCH_2154 v0
du_Computational'45'EPOCH_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_2154 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_2148 (coe v0) (coe v2) (coe v3)))
-- Ledger.Conway.Conformance.Epoch.Properties._.NEWEPOCH-total
d_NEWEPOCH'45'total_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2308 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_2182 v0 ~v1 v2 v3
  = du_NEWEPOCH'45'total_2182 v0 v2 v3
du_NEWEPOCH'45'total_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2308 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_2182 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2322 v3 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                           (coe v0)))
                     v1
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
                        (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                           (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2304
                           (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Slot'691'_58
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                 (coe v0))
                              v3)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
                              (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                 (coe v0))
                              (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕtoEpoch_244
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                                    (coe v0))
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
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2322
                                               (coe v1)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     du_EPOCH'45'total''_2148 (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_applyRUpd_2378
                                                        (coe v0) (coe v10) (coe v4))
                                                     (coe v1)))
                                               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_NEWEPOCH'45'New_2588
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_EPOCH'45'total''_2148 (coe v0)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.du_applyRUpd_2378
                                                           (coe v0) (coe v10) (coe v4))
                                                        (coe v1)))))
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2322
                                               (coe v1)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     du_EPOCH'45'total''_2148 (coe v0) (coe v4)
                                                     (coe v1)))
                                               (coe v5))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_NEWEPOCH'45'No'45'Reward'45'Update_2592
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_EPOCH'45'total''_2148 (coe v0) (coe v4)
                                                        (coe v1)))))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_NEWEPOCH'45'Not'45'New_2590))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Properties._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_2216 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2308 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_NewEpochState_2308 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2584 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_2216 = erased
-- Ledger.Conway.Conformance.Epoch.Properties.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_2326 v0 ~v1
  = du_Computational'45'NEWEPOCH_2326 v0
du_Computational'45'NEWEPOCH_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_2326 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_NEWEPOCH'45'total_2182 (coe v0) (coe v3) (coe v2)))
