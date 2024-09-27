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

module MAlonzo.Code.Ledger.Epoch.Properties where

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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.GeneralisedArithmetic
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Interface.HasEmptySet.Instances
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Epoch
d_Epoch_194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_194 = erased
-- Ledger.Epoch.Properties._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__1744 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1746 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__1748 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._.EpochState
d_EpochState_1752 a0 a1 = ()
-- Ledger.Epoch.Properties._.NewEpochState
d_NewEpochState_1760 a0 a1 = ()
-- Ledger.Epoch.Properties._.Snapshot
d_Snapshot_1766 a0 a1 = ()
-- Ledger.Epoch.Properties._.Snapshots
d_Snapshots_1768 a0 a1 = ()
-- Ledger.Epoch.Properties._.EpochState.acnt
d_acnt_1812 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_1812 v0 = coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v0)
-- Ledger.Epoch.Properties._.EpochState.es
d_es_1814 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_1814 v0 = coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v0)
-- Ledger.Epoch.Properties._.EpochState.fut
d_fut_1816 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022
d_fut_1816 v0 = coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v0)
-- Ledger.Epoch.Properties._.EpochState.ls
d_ls_1818 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2152
d_ls_1818 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v0)
-- Ledger.Epoch.Properties._.EpochState.ss
d_ss_1820 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282
d_ss_1820 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v0)
-- Ledger.Epoch.Properties._.NewEpochState.epochState
d_epochState_1824 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302
d_epochState_1824 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_epochState_2336 (coe v0)
-- Ledger.Epoch.Properties._.NewEpochState.lastEpoch
d_lastEpoch_1826 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 -> AgdaAny
d_lastEpoch_1826 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_lastEpoch_2334 (coe v0)
-- Ledger.Epoch.Properties._.NewEpochState.ru
d_ru_1828 ::
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  Maybe MAlonzo.Code.Ledger.Epoch.T_RewardUpdate_2242
d_ru_1828 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ru_2338 (coe v0)
-- Ledger.Epoch.Properties._.Snapshot.delegations
d_delegations_1844 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_1844 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_delegations_2278 (coe v0)
-- Ledger.Epoch.Properties._.Snapshot.stake
d_stake_1846 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_1846 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_stake_2276 (coe v0)
-- Ledger.Epoch.Properties._.Snapshots.feeSS
d_feeSS_1850 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 -> Integer
d_feeSS_1850 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2298 (coe v0)
-- Ledger.Epoch.Properties._.Snapshots.go
d_go_1852 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270
d_go_1852 v0 = coe MAlonzo.Code.Ledger.Epoch.d_go_2296 (coe v0)
-- Ledger.Epoch.Properties._.Snapshots.mark
d_mark_1854 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270
d_mark_1854 v0 = coe MAlonzo.Code.Ledger.Epoch.d_mark_2292 (coe v0)
-- Ledger.Epoch.Properties._.Snapshots.set
d_set_1856 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270
d_set_1856 v0 = coe MAlonzo.Code.Ledger.Epoch.d_set_2294 (coe v0)
-- Ledger.Epoch.Properties._.LState
d_LState_1870 a0 a1 = ()
-- Ledger.Epoch.Properties._.LState.certState
d_certState_1898 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_1898 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_certState_2164 (coe v0)
-- Ledger.Epoch.Properties._.LState.govSt
d_govSt_1900 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1900 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_govSt_2162 (coe v0)
-- Ledger.Epoch.Properties._.LState.utxoSt
d_utxoSt_1902 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_1902 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160 (coe v0)
-- Ledger.Epoch.Properties._.completeness
d_completeness_2048 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2048 = erased
-- Ledger.Epoch.Properties._.computeProof
d_computeProof_2054 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2054 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Epoch.Properties._.SNAP-total
d_SNAP'45'total_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2076 v0 ~v1 v2 v3 = du_SNAP'45'total_2076 v0 v2 v3
du_SNAP'45'total_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2076 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300
         (coe
            MAlonzo.Code.Ledger.Epoch.du_stakeDistr_2480 (coe v0)
            (let v3
                   = coe
                       MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_25053 (coe v1)
                       (coe MAlonzo.Code.Ledger.Epoch.d_mark_2292 (coe v2))
                       (coe MAlonzo.Code.Ledger.Epoch.d_set_2294 (coe v2))
                       (coe MAlonzo.Code.Ledger.Epoch.d_go_2296 (coe v2))
                       (coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2298 (coe v2)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                  (coe
                     MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'lstate_25041
                        (coe v3)))))
            (let v3
                   = coe
                       MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_25053 (coe v1)
                       (coe MAlonzo.Code.Ledger.Epoch.d_mark_2292 (coe v2))
                       (coe MAlonzo.Code.Ledger.Epoch.d_set_2294 (coe v2))
                       (coe MAlonzo.Code.Ledger.Epoch.d_go_2296 (coe v2))
                       (coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2298 (coe v2)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Certs.d_dState_960
                  (coe
                     MAlonzo.Code.Ledger.Ledger.d_certState_2164
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'lstate_25041
                        (coe v3))))))
         (coe MAlonzo.Code.Ledger.Epoch.d_mark_2292 (coe v2))
         (coe MAlonzo.Code.Ledger.Epoch.d_set_2294 (coe v2))
         (let v3
                = coe
                    MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_25053 (coe v1)
                    (coe MAlonzo.Code.Ledger.Epoch.d_mark_2292 (coe v2))
                    (coe MAlonzo.Code.Ledger.Epoch.d_set_2294 (coe v2))
                    (coe MAlonzo.Code.Ledger.Epoch.d_go_2296 (coe v2))
                    (coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2298 (coe v2)) in
          coe
            (coe
               MAlonzo.Code.Ledger.Utxo.d_fees_1982
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                  (coe
                     MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'lstate_25041
                     (coe v3))))))
      (coe MAlonzo.Code.Ledger.Epoch.C_SNAP_2564)
-- Ledger.Epoch.Properties._.SNAP-complete
d_SNAP'45'complete_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2534 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2080 = erased
-- Ledger.Epoch.Properties._.es
d_es_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_2130 ~v0 ~v1 v2 ~v3 = du_es_2130 v2
du_es_2130 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
du_es_2130 v0
  = coe
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
      (coe
         MAlonzo.Code.Ledger.Enact.d_cc_864
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_2030
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_constitution_866
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_2030
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pv_868
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_2030
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pparams_870
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_2030
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
-- Ledger.Epoch.Properties._.govSt'
d_govSt''_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2132 v0 ~v1 v2 ~v3 = du_govSt''_2132 v0 v2
du_govSt''_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2132 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_filter_664
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                    (coe
                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (coe
                       MAlonzo.Code.Interface.IsSet.d_toSet_482
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_386
                          (MAlonzo.Code.Axiom.Set.d_th_1458
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                          (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                             (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
      (coe
         MAlonzo.Code.Ledger.Ledger.d_govSt_2162
         (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))
-- Ledger.Epoch.Properties._.EPOCH-total
d_EPOCH'45'total_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_2138 v0 ~v1 v2 v3
  = du_EPOCH'45'total_2138 v0 v2 v3
du_EPOCH'45'total_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_2138 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324
         (coe
            MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
            (coe
               addInt
               (coe
                  addInt
                  (coe
                     MAlonzo.Code.Ledger.Utxo.d_donations_1986
                     (coe
                        MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                        (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                     (MAlonzo.Code.Ledger.PParams.d_treasury_152
                        (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v1)))
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
                        (coe
                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                        (coe (\ v3 -> v3))
                        (coe
                           MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                           (coe
                              MAlonzo.Code.Ledger.Ratify.d_es_2030
                              (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1)))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                  (coe
                     MAlonzo.Code.Ledger.Interface.HasCoin.d_getCoin_18
                     (coe
                        MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1854
                        (coe
                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                        MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                        (coe
                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                           (coe
                              MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                              (let v3
                                     = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_map_386
                                    (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
                                    (\ v4 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
                                    (let v4
                                           = let v4
                                                   = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1458 (coe v4))) in
                                     coe
                                       (let v5
                                              = let v5
                                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                     (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                           (coe v1)))
                                                     (let v6
                                                            = let v6
                                                                    = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe v6))) in
                                                      coe
                                                        (let v7
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                   (coe
                                                                      MAlonzo.Code.Data.List.Base.du_filter_664
                                                                      (coe
                                                                         (\ v7 ->
                                                                            coe
                                                                              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                          (coe v0))
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe v7))
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                       (let v8
                                                                                              = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_map_386
                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                (coe
                                                                                                   v8))
                                                                                             (\ v9 ->
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     v9))
                                                                                             (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1)))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                            (coe v1)))) in
                                                         coe (coe v6 v7)))) in
                                        coe
                                          (let v6
                                                 = \ v6 ->
                                                     let v7
                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_map_386
                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe v7))
                                                          (\ v8 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v6)))
                                                               (coe v8))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                             (let v8
                                                                    = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                           (coe v0)) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                      erased v8)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                            (coe v1))))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v6)))))))) in
                                           coe (coe v4 v6 v5))))))))
                        (MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                           (coe
                              MAlonzo.Code.Ledger.Ratify.d_es_2030
                              (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))))
                  (coe
                     MAlonzo.Code.Ledger.Interface.HasCoin.d_getCoin_18
                     (coe
                        MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1854
                        (coe
                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1558
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                 (coe
                                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                                 (let v3
                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_386
                                       (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
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
                                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                        (coe v4))) in
                                        coe
                                          (let v5
                                                 = let v5
                                                         = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                           (coe v5))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                              (coe v1)))
                                                        (let v6
                                                               = let v6
                                                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe v6))) in
                                                         coe
                                                           (let v7
                                                                  = coe
                                                                      MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                            (coe
                                                                               MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.Base.du_filter_664
                                                                         (coe
                                                                            (\ v7 ->
                                                                               coe
                                                                                 MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                          () erased
                                                                                          () erased
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                             (coe
                                                                                                v0))
                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                          (coe v7))
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                          (let v8
                                                                                                 = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.du_map_386
                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                   (coe
                                                                                                      v8))
                                                                                                (\ v9 ->
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v9))
                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                      (coe
                                                                                                         v1)))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                               (coe v1)))) in
                                                            coe (coe v6 v7)))) in
                                           coe
                                             (let v6
                                                    = \ v6 ->
                                                        let v7
                                                              = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_map_386
                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                (coe v7))
                                                             (\ v8 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v6)))
                                                                  (coe v8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                (let v8
                                                                       = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                         erased v8)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v6)))))))) in
                                              coe (coe v4 v6 v5))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                              (coe
                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                 (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1)))))
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                   (coe
                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                                (coe v3)
                                (let v4
                                       = MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v4
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                               (coe
                                                  MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                                                  (let v5
                                                         = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_map_386
                                                        (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))
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
                                                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe v6))) in
                                                         coe
                                                           (let v7
                                                                  = let v7
                                                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe v7))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1)))
                                                                         (let v8
                                                                                = let v8
                                                                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             v8))) in
                                                                          coe
                                                                            (let v9
                                                                                   = coe
                                                                                       MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                                             (coe
                                                                                                MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                          (coe
                                                                                             (\ v9 ->
                                                                                                coe
                                                                                                  MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                              (coe
                                                                                                                 v0))
                                                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v9))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                                           (let v10
                                                                                                                  = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.du_map_386
                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                    (coe
                                                                                                                       v10))
                                                                                                                 (\ v11 ->
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         v11))
                                                                                                                 (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                       (coe
                                                                                                                          v1)))))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                (coe
                                                                                                   v1)))) in
                                                                             coe (coe v8 v9)))) in
                                                            coe
                                                              (let v8
                                                                     = \ v8 ->
                                                                         let v9
                                                                               = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du_map_386
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                 (coe v9))
                                                                              (\ v10 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe v8)))
                                                                                   (coe v10))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                 (let v10
                                                                                        = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                               (coe
                                                                                                  v0)) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                          erased
                                                                                          v10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                (coe
                                                                                                   v1))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v8)))))))) in
                                                               coe (coe v6 v8 v7))))))))
                                            (MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                               (coe
                                                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                  (coe
                                                     MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                     (coe v1))))))))))
                        (coe MAlonzo.Code.Ledger.Epoch.du_toRwdAddr_2388 (coe v0))
                        (coe
                           MAlonzo.Code.Interface.IsSet.du_dom_540
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_rewards_924
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_dState_960
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                    (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))))))))
            (coe
               MAlonzo.Code.Ledger.PParams.d_reserves_154
               (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v1))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_SNAP'45'total_2076 (coe v0)
               (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))
               (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166
            (coe
               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
               (coe
                  MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                  (coe
                     MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                     (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
               (coe
                  MAlonzo.Code.Ledger.Utxo.d_fees_1982
                  (coe
                     MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                     (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
               (let v3
                      = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v3)
                     (coe
                        MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                        (coe
                           MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                           (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
                     (let v4
                            = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_386
                           (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v4))
                           (\ v5 ->
                              let v6 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5) in
                              coe (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                           (let v5
                                  = let v5
                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                    coe
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                                         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))) in
                            coe
                              (let v6
                                     = let v6
                                             = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                       coe
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                                            (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v6))
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1)))
                                            (let v7
                                                   = let v7
                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_416
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe v7))) in
                                             coe
                                               (let v8
                                                      = coe
                                                          MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                          (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                      (coe v1))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                      (coe v1))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                      (coe v1))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                      (coe v1))))
                                                             (coe
                                                                MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                (coe
                                                                   MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_filter_664
                                                             (coe
                                                                (\ v8 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                     (coe
                                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                           (coe
                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                              () erased () erased
                                                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                 (coe v0))
                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v8))
                                                                           (coe
                                                                              MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                              (coe
                                                                                 MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                              (let v9
                                                                                     = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.du_map_386
                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                       (coe v9))
                                                                                    (\ v10 ->
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe v10))
                                                                                    (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                          (coe
                                                                                             v1)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                   (coe v1)))) in
                                                coe (coe v7 v8)))) in
                               coe
                                 (let v7
                                        = \ v7 ->
                                            let v8
                                                  = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_map_386
                                                 (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v8))
                                                 (\ v9 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v7)))
                                                      (coe v9))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                    (let v9
                                                           = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                  (coe v0)) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                             erased v9)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                   (coe v1))))
                                                          (coe
                                                             MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                             (coe
                                                                MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                             (coe
                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                             (coe
                                MAlonzo.Code.Interface.IsSet.d_toSet_482
                                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                (let v4
                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_386
                                      (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v4))
                                      (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                      (let v5
                                             = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                       coe
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du__'8746'__668
                                            (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1)))
                                            (let v6
                                                   = let v6
                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_fromList_416
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                             (coe v6))) in
                                             coe
                                               (let v7
                                                      = coe
                                                          MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                          (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                      (coe v1))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                      (coe v1))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                      (coe v1))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                      (coe v1))))
                                                             (coe
                                                                MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                (coe
                                                                   MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                          (coe
                                                             MAlonzo.Code.Data.List.Base.du_filter_664
                                                             (coe
                                                                (\ v7 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                     (coe
                                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                           (coe
                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                              () erased () erased
                                                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                 (coe v0))
                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v7))
                                                                           (coe
                                                                              MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                              (coe
                                                                                 MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                              (let v8
                                                                                     = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.du_map_386
                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                       (coe v8))
                                                                                    (\ v9 ->
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe v9))
                                                                                    (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                          (coe
                                                                                             v1)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                   (coe v1)))) in
                                                coe (coe v6 v7)))))))))
                          (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_966
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_926
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_dState_960
                        (coe
                           MAlonzo.Code.Ledger.Ledger.d_certState_2164
                           (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_dState_960
                        (coe
                           MAlonzo.Code.Ledger.Ledger.d_certState_2164
                           (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                     MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                     (MAlonzo.Code.Ledger.Certs.d_rewards_924
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_dState_960
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_2164
                              (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1558
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                 (coe
                                    MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                                 (let v3
                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_386
                                       (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
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
                                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                        (coe v4))) in
                                        coe
                                          (let v5
                                                 = let v5
                                                         = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                           (coe v5))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                              (coe v1)))
                                                        (let v6
                                                               = let v6
                                                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe v6))) in
                                                         coe
                                                           (let v7
                                                                  = coe
                                                                      MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1))))
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                            (coe
                                                                               MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                      (coe
                                                                         MAlonzo.Code.Data.List.Base.du_filter_664
                                                                         (coe
                                                                            (\ v7 ->
                                                                               coe
                                                                                 MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                          () erased
                                                                                          () erased
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                             (coe
                                                                                                v0))
                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                          (coe v7))
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                          (let v8
                                                                                                 = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.du_map_386
                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                   (coe
                                                                                                      v8))
                                                                                                (\ v9 ->
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v9))
                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                      (coe
                                                                                                         v1)))))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                               (coe v1)))) in
                                                            coe (coe v6 v7)))) in
                                           coe
                                             (let v6
                                                    = \ v6 ->
                                                        let v7
                                                              = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_map_386
                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                (coe v7))
                                                             (\ v8 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v6)))
                                                                  (coe v8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                (let v8
                                                                       = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                         erased v8)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v6)))))))) in
                                              coe (coe v4 v6 v5))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                              (coe
                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                 (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1)))))
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                   (coe
                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                                (coe v3)
                                (let v4
                                       = MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v4
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                               (coe
                                                  MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                                                  (let v5
                                                         = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_map_386
                                                        (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))
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
                                                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe v6))) in
                                                         coe
                                                           (let v7
                                                                  = let v7
                                                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe v7))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1)))
                                                                         (let v8
                                                                                = let v8
                                                                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             v8))) in
                                                                          coe
                                                                            (let v9
                                                                                   = coe
                                                                                       MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                                             (coe
                                                                                                MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                          (coe
                                                                                             (\ v9 ->
                                                                                                coe
                                                                                                  MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                           ()
                                                                                                           erased
                                                                                                           ()
                                                                                                           erased
                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                              (coe
                                                                                                                 v0))
                                                                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v9))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                                           (let v10
                                                                                                                  = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                            coe
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.du_map_386
                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                    (coe
                                                                                                                       v10))
                                                                                                                 (\ v11 ->
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         v11))
                                                                                                                 (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                       (coe
                                                                                                                          v1)))))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                (coe
                                                                                                   v1)))) in
                                                                             coe (coe v8 v9)))) in
                                                            coe
                                                              (let v8
                                                                     = \ v8 ->
                                                                         let v9
                                                                               = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du_map_386
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                 (coe v9))
                                                                              (\ v10 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe v8)))
                                                                                   (coe v10))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                 (let v10
                                                                                        = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                               (coe
                                                                                                  v0)) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                          erased
                                                                                          v10)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                (coe
                                                                                                   v1))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v8)))))))) in
                                                               coe (coe v6 v8 v7))))))))
                                            (MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                               (coe
                                                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                  (coe
                                                     MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                     (coe v1))))))))))
                        (coe MAlonzo.Code.Ledger.Epoch.du_toRwdAddr_2388 (coe v0))
                        (coe
                           MAlonzo.Code.Interface.IsSet.du_dom_540
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_rewards_924
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_dState_960
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                    (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))))))
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_938
                  (let v3
                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v3)
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_pools_934
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_pState_962
                              (coe
                                 MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                 (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                        (let v4
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1602
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_retiring_936
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_pState_962
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                       (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                              (coe v2)))))
                  (let v3
                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v3)
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_retiring_936
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_pState_962
                              (coe
                                 MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                 (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                        (let v4
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1602
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_retiring_936
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_pState_962
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                       (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                              (coe v2))))))
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_950
                  (let v3 = MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94 in
                   coe
                     (coe
                        MAlonzo.Code.Interface.ToBool.du_if_then_else__46 (coe v3)
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
                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
                                               (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                  (coe v0))
                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.d_toSet_482
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                               (let v5
                                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_map_386
                                                     (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))
                                                     (\ v6 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v6))
                                                     (let v6
                                                            = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe v6))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                 (coe v1)))
                                                           (let v7
                                                                  = let v7
                                                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe v7))) in
                                                            coe
                                                              (let v8
                                                                     = coe
                                                                         MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                                         (coe v0)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                     (coe v1))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                     (coe v1))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                     (coe v1))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                     (coe v1))))
                                                                            (coe
                                                                               MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                               (coe
                                                                                  MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Base.du_filter_664
                                                                            (coe
                                                                               (\ v8 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                             ()
                                                                                             erased
                                                                                             ()
                                                                                             erased
                                                                                             (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                (coe
                                                                                                   v0))
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                             (coe
                                                                                                MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                             (let v9
                                                                                                    = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_map_386
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                      (coe
                                                                                                         v9))
                                                                                                   (\ v10 ->
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           v10))
                                                                                                   (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                         (coe
                                                                                                            v1)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                  (coe v1)))) in
                                                               coe (coe v7 v8)))))))))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                              (coe
                                 MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                 (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                        (coe
                           MAlonzo.Code.Level.C_lift_20
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_864
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (coe
                                   MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                   (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                                      (MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542
                                            (coe v0)))
                                      (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                (coe
                                   MAlonzo.Code.Ledger.Certs.d_dreps_946
                                   (coe
                                      MAlonzo.Code.Ledger.Certs.d_gState_964
                                      (coe
                                         MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                         (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))))
                        (coe
                           (\ v4 ->
                              MAlonzo.Code.Ledger.Certs.d_dreps_946
                                (coe
                                   MAlonzo.Code.Ledger.Certs.d_gState_964
                                   (coe
                                      MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                      (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))))))
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v3)
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_gState_964
                              (coe
                                 MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                 (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Enact.du_ccCreds_874
                           (coe
                              MAlonzo.Code.Ledger.Enact.d_cc_864
                              (coe
                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                 (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))))))))
         (coe
            MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
            (coe
               MAlonzo.Code.Ledger.Enact.d_cc_864
               (coe
                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                  (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_constitution_866
               (coe
                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                  (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pv_868
               (coe
                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                  (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pparams_870
               (coe
                  MAlonzo.Code.Ledger.Ratify.d_es_2030
                  (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
            (coe
               MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
               (coe
                  MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total''_2220
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11511
                  (coe
                     MAlonzo.Code.Ledger.Epoch.du_mkStakeDistrs_2524 (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_mark_2292
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              du_SNAP'45'total_2076 (coe v0)
                              (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))
                              (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v1)))))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_filter_664
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                (coe
                                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                   (coe
                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
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
                                         MAlonzo.Code.Axiom.Set.d_replacement_196
                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                         erased erased
                                         (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_184
                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               erased
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                        (coe
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                              (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 erased
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                      (coe v1))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                      (coe v1))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                      (coe v1))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                      (coe v1))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                (coe
                                                                                   (\ v4 v5 v6 v7
                                                                                      v8 ->
                                                                                      coe
                                                                                        MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                          (coe
                                                                             MAlonzo.Code.Data.List.Base.du_filter_664
                                                                             (coe
                                                                                (\ v4 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                              (coe
                                                                                                 v0))
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                              (coe
                                                                                                 (\ v5
                                                                                                    v6 ->
                                                                                                    coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                      erased
                                                                                                      (\ v7 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                           (coe
                                                                                                              v5))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                         (coe
                                                                                                            eqInt
                                                                                                            (coe
                                                                                                               v5)
                                                                                                            (coe
                                                                                                               v6))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                            (coe
                                                                                                               eqInt
                                                                                                               (coe
                                                                                                                  v5)
                                                                                                               (coe
                                                                                                                  v6))))))))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe v4))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                              erased
                                                                                              erased
                                                                                              (\ v5 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v5))
                                                                                              (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                   (coe v1)))))
                                                                       (coe
                                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                          (coe
                                                                             (\ v4 v5 ->
                                                                                addInt
                                                                                  (coe
                                                                                     (1 :: Integer))
                                                                                  (coe v5)))
                                                                          (coe (0 :: Integer))
                                                                          (coe
                                                                             MAlonzo.Code.Data.List.Base.du_filter_664
                                                                             (coe
                                                                                (\ v4 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                              (coe
                                                                                                 v0))
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                              (coe
                                                                                                 (\ v5
                                                                                                    v6 ->
                                                                                                    coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                      erased
                                                                                                      (\ v7 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                           (coe
                                                                                                              v5))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                         (coe
                                                                                                            eqInt
                                                                                                            (coe
                                                                                                               v5)
                                                                                                            (coe
                                                                                                               v6))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                            (coe
                                                                                                               eqInt
                                                                                                               (coe
                                                                                                                  v5)
                                                                                                               (coe
                                                                                                                  v6))))))))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe v4))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                              erased
                                                                                              erased
                                                                                              (\ v5 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v5))
                                                                                              (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                   (coe v1)))))))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                        (coe
                           MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                           (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              MAlonzo.Code.Axiom.Set.d_specification_174
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              erased erased
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                       (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                 erased erased erased
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                    erased erased
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                       erased
                                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                             (coe v0)))
                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             erased erased
                                             (\ v3 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v3)))
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   erased
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_replacement_196
                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                         erased erased
                                                         (\ v3 ->
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 erased erased
                                                                 (\ v4 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe v3)))
                                                                      (coe v4))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_specification_174
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       erased erased
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                   (coe v1)))))
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                          (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                          erased erased erased
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                             erased
                                                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                   (coe v0)))
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               v3)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                          (\ v4 ->
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v4)))))))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_unions_184
                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               erased
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     erased
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                              (coe v1)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 erased
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                          (coe v0)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                      (coe
                                                                                                         v1))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                      (coe
                                                                                                         v1))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                      (coe
                                                                                                         v1))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                      (coe
                                                                                                         v1))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                (coe
                                                                                                   (\ v3
                                                                                                      v4
                                                                                                      v5
                                                                                                      v6
                                                                                                      v7 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                             (coe
                                                                                                (\ v3 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                              (coe
                                                                                                                 v0))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                              (coe
                                                                                                                 (\ v4
                                                                                                                    v5 ->
                                                                                                                    coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                      erased
                                                                                                                      (\ v6 ->
                                                                                                                         coe
                                                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                           (coe
                                                                                                                              v4))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                         (coe
                                                                                                                            eqInt
                                                                                                                            (coe
                                                                                                                               v4)
                                                                                                                            (coe
                                                                                                                               v5))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                            (coe
                                                                                                                               eqInt
                                                                                                                               (coe
                                                                                                                                  v4)
                                                                                                                               (coe
                                                                                                                                  v5))))))))
                                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v3))
                                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                              erased
                                                                                                              erased
                                                                                                              (\ v4 ->
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                   (coe
                                                                                                                      v4))
                                                                                                              (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                   (coe
                                                                                                      v1)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                          (coe
                                                                                             (\ v3
                                                                                                v4 ->
                                                                                                addInt
                                                                                                  (coe
                                                                                                     (1 ::
                                                                                                        Integer))
                                                                                                  (coe
                                                                                                     v4)))
                                                                                          (coe
                                                                                             (0 ::
                                                                                                Integer))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                             (coe
                                                                                                (\ v3 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                              (coe
                                                                                                                 v0))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                              (coe
                                                                                                                 (\ v4
                                                                                                                    v5 ->
                                                                                                                    coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                      erased
                                                                                                                      (\ v6 ->
                                                                                                                         coe
                                                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                           (coe
                                                                                                                              v4))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                         (coe
                                                                                                                            eqInt
                                                                                                                            (coe
                                                                                                                               v4)
                                                                                                                            (coe
                                                                                                                               v5))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                            (coe
                                                                                                                               eqInt
                                                                                                                               (coe
                                                                                                                                  v4)
                                                                                                                               (coe
                                                                                                                                  v5))))))))
                                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v3))
                                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                              erased
                                                                                                              erased
                                                                                                              (\ v4 ->
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                   (coe
                                                                                                                      v4))
                                                                                                              (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                   (coe
                                                                                                      v1)))))))))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
                                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))
                        (coe
                           (\ v3 v4 v5 v6 v7 ->
                              coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                   (coe
                                      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                      (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
                                v3 v4 v5
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.Function.Bundles.d_from_1726
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_specification_174
                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                            erased erased
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                        (coe v1)))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                               (MAlonzo.Code.Axiom.Set.d_sp_150
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                     (coe
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                               erased erased erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                  (MAlonzo.Code.Axiom.Set.d_sp_150
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                        (coe
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased
                                                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                           (coe v0)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           erased erased
                                                           (\ v8 ->
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v8)))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_unions_184
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 erased
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       erased erased
                                                                       (\ v8 ->
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               erased erased
                                                                               (\ v9 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v8)))
                                                                                    (coe v9))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                 (coe
                                                                                                    v1)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                        erased
                                                                                        erased
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                           erased
                                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_unions_184
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                            (coe
                                                                                               v1)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               erased
                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                    erased
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                              (coe
                                                                                                                 (\ v8
                                                                                                                    v9
                                                                                                                    v10
                                                                                                                    v11
                                                                                                                    v12 ->
                                                                                                                    coe
                                                                                                                      MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                           (coe
                                                                                                              (\ v8 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                            (coe
                                                                                                                               (\ v9
                                                                                                                                  v10 ->
                                                                                                                                  coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                    erased
                                                                                                                                    (\ v11 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                         (coe
                                                                                                                                            v9))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                       (coe
                                                                                                                                          eqInt
                                                                                                                                          (coe
                                                                                                                                             v9)
                                                                                                                                          (coe
                                                                                                                                             v10))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                          (coe
                                                                                                                                             eqInt
                                                                                                                                             (coe
                                                                                                                                                v9)
                                                                                                                                             (coe
                                                                                                                                                v10))))))))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            v8))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                            erased
                                                                                                                            erased
                                                                                                                            (\ v9 ->
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                 (coe
                                                                                                                                    v9))
                                                                                                                            (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                  (coe
                                                                                                                                     v1))))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                 (coe
                                                                                                                    v1)))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                        (coe
                                                                                                           (\ v8
                                                                                                              v9 ->
                                                                                                              addInt
                                                                                                                (coe
                                                                                                                   (1 ::
                                                                                                                      Integer))
                                                                                                                (coe
                                                                                                                   v9)))
                                                                                                        (coe
                                                                                                           (0 ::
                                                                                                              Integer))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                           (coe
                                                                                                              (\ v8 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                            (coe
                                                                                                                               (\ v9
                                                                                                                                  v10 ->
                                                                                                                                  coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                    erased
                                                                                                                                    (\ v11 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                         (coe
                                                                                                                                            v9))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                       (coe
                                                                                                                                          eqInt
                                                                                                                                          (coe
                                                                                                                                             v9)
                                                                                                                                          (coe
                                                                                                                                             v10))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                          (coe
                                                                                                                                             eqInt
                                                                                                                                             (coe
                                                                                                                                                v9)
                                                                                                                                             (coe
                                                                                                                                                v10))))))))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            v8))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                            erased
                                                                                                                            erased
                                                                                                                            (\ v9 ->
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                 (coe
                                                                                                                                    v9))
                                                                                                                            (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                  (coe
                                                                                                                                     v1))))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                 (coe
                                                                                                                    v1)))))))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
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
                                            MAlonzo.Code.Axiom.Set.d_specification_174
                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                            erased erased
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                        (coe v1)))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                               (MAlonzo.Code.Axiom.Set.d_sp_150
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                     (coe
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                               erased erased erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                  (MAlonzo.Code.Axiom.Set.d_sp_150
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                        (coe
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased
                                                     (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                           (coe v0)))
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           erased erased
                                                           (\ v8 ->
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v8)))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_unions_184
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 erased
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       erased erased
                                                                       (\ v8 ->
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               erased erased
                                                                               (\ v9 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v8)))
                                                                                    (coe v9))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                 (coe
                                                                                                    v1)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                        erased
                                                                                        erased
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                           erased
                                                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_unions_184
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                            (coe
                                                                                               v1)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               erased
                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                    (coe
                                                                                                                       v1))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                    erased
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                              (coe
                                                                                                                 (\ v8
                                                                                                                    v9
                                                                                                                    v10
                                                                                                                    v11
                                                                                                                    v12 ->
                                                                                                                    coe
                                                                                                                      MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                           (coe
                                                                                                              (\ v8 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                            (coe
                                                                                                                               (\ v9
                                                                                                                                  v10 ->
                                                                                                                                  coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                    erased
                                                                                                                                    (\ v11 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                         (coe
                                                                                                                                            v9))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                       (coe
                                                                                                                                          eqInt
                                                                                                                                          (coe
                                                                                                                                             v9)
                                                                                                                                          (coe
                                                                                                                                             v10))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                          (coe
                                                                                                                                             eqInt
                                                                                                                                             (coe
                                                                                                                                                v9)
                                                                                                                                             (coe
                                                                                                                                                v10))))))))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            v8))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                            erased
                                                                                                                            erased
                                                                                                                            (\ v9 ->
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                 (coe
                                                                                                                                    v9))
                                                                                                                            (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                  (coe
                                                                                                                                     v1))))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                 (coe
                                                                                                                    v1)))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                        (coe
                                                                                                           (\ v8
                                                                                                              v9 ->
                                                                                                              addInt
                                                                                                                (coe
                                                                                                                   (1 ::
                                                                                                                      Integer))
                                                                                                                (coe
                                                                                                                   v9)))
                                                                                                        (coe
                                                                                                           (0 ::
                                                                                                              Integer))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                           (coe
                                                                                                              (\ v8 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                            (coe
                                                                                                                               (\ v9
                                                                                                                                  v10 ->
                                                                                                                                  coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                    erased
                                                                                                                                    (\ v11 ->
                                                                                                                                       coe
                                                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                         (coe
                                                                                                                                            v9))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                       (coe
                                                                                                                                          eqInt
                                                                                                                                          (coe
                                                                                                                                             v9)
                                                                                                                                          (coe
                                                                                                                                             v10))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                          (coe
                                                                                                                                             eqInt
                                                                                                                                             (coe
                                                                                                                                                v9)
                                                                                                                                             (coe
                                                                                                                                                v10))))))))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            v8))
                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                            erased
                                                                                                                            erased
                                                                                                                            (\ v9 ->
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                 (coe
                                                                                                                                    v9))
                                                                                                                            (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                  (coe
                                                                                                                                     v1))))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                 (coe
                                                                                                                    v1)))))))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
                                               (\ v8 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v8))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                            (coe v5)))
                                      v7)))))
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_dState_960
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_2164
                              (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_dreps_946
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_gState_964
                        (coe
                           MAlonzo.Code.Ledger.Ledger.d_certState_2164
                           (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_gState_964
                        (coe
                           MAlonzo.Code.Ledger.Ledger.d_certState_2164
                           (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_treasury_152
                     (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v1))))
               (coe
                  MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                  (coe
                     MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_cc_864
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_2030
                           (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_constitution_866
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_2030
                           (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_pv_868
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_2030
                           (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_pparams_870
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_2030
                           (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              MAlonzo.Code.Axiom.Set.d_listing_204
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           (\ v3 v4 v5 v6 v7 ->
                              coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Axiom.Set.d_listing_204
                        (MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_664
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                          (coe
                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
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
                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   erased erased
                                   (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_unions_184
                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                         erased
                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_listing_204
                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               erased
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                        (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_listing_204
                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           erased
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                (coe v1))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                (coe v1))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                (coe v1))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                (coe v1))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                erased
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                          (coe
                                                                             (\ v4 v5 v6 v7 v8 ->
                                                                                coe
                                                                                  MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du_filter_664
                                                                       (coe
                                                                          (\ v4 ->
                                                                             coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                        (coe v0))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                        (coe
                                                                                           (\ v5
                                                                                              v6 ->
                                                                                              coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                erased
                                                                                                (\ v7 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                     (coe
                                                                                                        v5))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                   (coe
                                                                                                      eqInt
                                                                                                      (coe
                                                                                                         v5)
                                                                                                      (coe
                                                                                                         v6))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                      (coe
                                                                                                         eqInt
                                                                                                         (coe
                                                                                                            v5)
                                                                                                         (coe
                                                                                                            v6))))))))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v4))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                        erased
                                                                                        erased
                                                                                        (\ v5 ->
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v5))
                                                                                        (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                              (coe
                                                                                                 v1))))))
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                             (coe v1)))))
                                                                 (coe
                                                                    MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                    (coe
                                                                       (\ v4 v5 ->
                                                                          addInt
                                                                            (coe (1 :: Integer))
                                                                            (coe v5)))
                                                                    (coe (0 :: Integer))
                                                                    (coe
                                                                       MAlonzo.Code.Data.List.Base.du_filter_664
                                                                       (coe
                                                                          (\ v4 ->
                                                                             coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                        (coe v0))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                        (coe
                                                                                           (\ v5
                                                                                              v6 ->
                                                                                              coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                erased
                                                                                                (\ v7 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                     (coe
                                                                                                        v5))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                   (coe
                                                                                                      eqInt
                                                                                                      (coe
                                                                                                         v5)
                                                                                                      (coe
                                                                                                         v6))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                      (coe
                                                                                                         eqInt
                                                                                                         (coe
                                                                                                            v5)
                                                                                                         (coe
                                                                                                            v6))))))))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v4))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                        erased
                                                                                        erased
                                                                                        (\ v5 ->
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v5))
                                                                                        (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                              (coe
                                                                                                 v1))))))
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                             (coe v1)))))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                  (coe
                     MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                     (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))))
      (coe
         MAlonzo.Code.Ledger.Epoch.C_EPOCH_2644
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total''_2220
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11511
                  (coe
                     MAlonzo.Code.Ledger.Epoch.du_mkStakeDistrs_2524 (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_mark_2292
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              du_SNAP'45'total_2076 (coe v0)
                              (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))
                              (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v1)))))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_filter_664
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                (coe
                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                      (coe
                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                         erased
                                         (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                            (coe v0))
                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                      (coe
                                         MAlonzo.Code.Interface.IsSet.d_toSet_482
                                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                         (let v4
                                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_386
                                               (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v4))
                                               (\ v5 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                               (let v5
                                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                     (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                           (coe v1)))
                                                     (let v6
                                                            = let v6
                                                                    = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe v6))) in
                                                      coe
                                                        (let v7
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                               (coe v1))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1458
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                   (coe
                                                                      MAlonzo.Code.Data.List.Base.du_filter_664
                                                                      (coe
                                                                         (\ v7 ->
                                                                            coe
                                                                              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                       () erased ()
                                                                                       erased
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                          (coe v0))
                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe v7))
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                       (let v8
                                                                                              = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_map_386
                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                (coe
                                                                                                   v8))
                                                                                             (\ v9 ->
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     v9))
                                                                                             (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                   (coe
                                                                                                      v1)))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                            (coe v1)))) in
                                                         coe (coe v6 v7)))))))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                        (coe
                           MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                           (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
                     (let v3
                            = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v3)
                           (coe
                              MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                              (coe
                                 MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                 (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
                           (let v4
                                  = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_map_386
                                 (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v4))
                                 (\ v5 ->
                                    let v6 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5) in
                                    coe (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                                 (let v5
                                        = let v5
                                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_concatMap'738'_496
                                               (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))) in
                                  coe
                                    (let v6
                                           = let v6
                                                   = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                  (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v6))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                        (coe v1)))
                                                  (let v7
                                                         = let v7
                                                                 = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe v7))) in
                                                   coe
                                                     (let v8
                                                            = coe
                                                                MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                                (coe v0)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                            (coe v1))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                            (coe v1))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                            (coe v1))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                            (coe v1))))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Base.du_filter_664
                                                                   (coe
                                                                      (\ v8 ->
                                                                         coe
                                                                           MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                           (coe
                                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                    () erased ()
                                                                                    erased
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                       (coe v0))
                                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                    (let v9
                                                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.du_map_386
                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                             (coe
                                                                                                v9))
                                                                                          (\ v10 ->
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v10))
                                                                                          (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                (coe
                                                                                                   v1)))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                         (coe v1)))) in
                                                      coe (coe v7 v8)))) in
                                     coe
                                       (let v7
                                              = \ v7 ->
                                                  let v8
                                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_map_386
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v8))
                                                       (\ v9 ->
                                                          coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v7)))
                                                            (coe v9))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                          (let v9
                                                                 = MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                        (coe v0)) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                   erased v9)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                         (coe v1))))
                                                                (coe
                                                                   MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                   (coe
                                                                      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v7)))))))) in
                                        coe (coe v5 v7 v6))))))))
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_dState_960
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_2164
                              (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))))
                  (coe v2)
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_32727
                             (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))
                             (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)) (coe v2)
                             (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v1))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   du_SNAP'45'total_2076 (coe v0)
                                   (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))
                                   (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v1))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total''_2220
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11511
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.du_mkStakeDistrs_2524 (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_mark_2292
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_SNAP'45'total_2076 (coe v0)
                                                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Epoch.d_ss_2316
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_filter_664
                                            (coe
                                               (\ v3 ->
                                                  coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
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
                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                             erased erased
                                                             (\ v4 ->
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v4))
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                   erased
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                         erased
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                              (coe
                                                                                                 v0)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                          (coe
                                                                                                             v1))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                          (coe
                                                                                                             v1))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                          (coe
                                                                                                             v1))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                          (coe
                                                                                                             v1))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                          erased
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                    (coe
                                                                                                       (\ v4
                                                                                                          v5
                                                                                                          v6
                                                                                                          v7
                                                                                                          v8 ->
                                                                                                          coe
                                                                                                            MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                 (coe
                                                                                                    (\ v4 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                  (coe
                                                                                                                     v0))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                  (coe
                                                                                                                     (\ v5
                                                                                                                        v6 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                          erased
                                                                                                                          (\ v7 ->
                                                                                                                             coe
                                                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                               (coe
                                                                                                                                  v5))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                             (coe
                                                                                                                                eqInt
                                                                                                                                (coe
                                                                                                                                   v5)
                                                                                                                                (coe
                                                                                                                                   v6))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                (coe
                                                                                                                                   eqInt
                                                                                                                                   (coe
                                                                                                                                      v5)
                                                                                                                                   (coe
                                                                                                                                      v6))))))))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v4))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                  erased
                                                                                                                  erased
                                                                                                                  (\ v5 ->
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          v5))
                                                                                                                  (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                        (coe
                                                                                                                           v1))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                       (coe
                                                                                                          v1)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                              (coe
                                                                                                 (\ v4
                                                                                                    v5 ->
                                                                                                    addInt
                                                                                                      (coe
                                                                                                         (1 ::
                                                                                                            Integer))
                                                                                                      (coe
                                                                                                         v5)))
                                                                                              (coe
                                                                                                 (0 ::
                                                                                                    Integer))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                 (coe
                                                                                                    (\ v4 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                  (coe
                                                                                                                     v0))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                  (coe
                                                                                                                     (\ v5
                                                                                                                        v6 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                          erased
                                                                                                                          (\ v7 ->
                                                                                                                             coe
                                                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                               (coe
                                                                                                                                  v5))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                             (coe
                                                                                                                                eqInt
                                                                                                                                (coe
                                                                                                                                   v5)
                                                                                                                                (coe
                                                                                                                                   v6))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                (coe
                                                                                                                                   eqInt
                                                                                                                                   (coe
                                                                                                                                      v5)
                                                                                                                                   (coe
                                                                                                                                      v6))))))))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v4))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                  erased
                                                                                                                  erased
                                                                                                                  (\ v5 ->
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          v5))
                                                                                                                  (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                        (coe
                                                                                                                           v1))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                       (coe
                                                                                                          v1)))))))))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                               (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_174
                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                     (coe
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                  erased erased
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                              (coe v1)))))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                     (MAlonzo.Code.Axiom.Set.d_sp_150
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                     erased erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                           erased
                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                 (coe v0)))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 erased erased
                                                                 (\ v3 ->
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v3)))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_unions_184
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       erased
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (\ v3 ->
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased erased
                                                                                     (\ v4 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v3)))
                                                                                          (coe v4))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                       (coe
                                                                                                          v1)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                  (coe
                                                                                                     v1)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     erased
                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                                              (coe
                                                                                                                 v0)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                          (coe
                                                                                                                             v1))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                          (coe
                                                                                                                             v1))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                          (coe
                                                                                                                             v1))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                          (coe
                                                                                                                             v1))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                          erased
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                    (coe
                                                                                                                       (\ v3
                                                                                                                          v4
                                                                                                                          v5
                                                                                                                          v6
                                                                                                                          v7 ->
                                                                                                                          coe
                                                                                                                            MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                 (coe
                                                                                                                    (\ v3 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                  (coe
                                                                                                                                     (\ v4
                                                                                                                                        v5 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                          erased
                                                                                                                                          (\ v6 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                               (coe
                                                                                                                                                  v4))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                             (coe
                                                                                                                                                eqInt
                                                                                                                                                (coe
                                                                                                                                                   v4)
                                                                                                                                                (coe
                                                                                                                                                   v5))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                (coe
                                                                                                                                                   eqInt
                                                                                                                                                   (coe
                                                                                                                                                      v4)
                                                                                                                                                   (coe
                                                                                                                                                      v5))))))))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v3))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  erased
                                                                                                                                  erased
                                                                                                                                  (\ v4 ->
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v4))
                                                                                                                                  (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                       (coe
                                                                                                                          v1)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                              (coe
                                                                                                                 (\ v3
                                                                                                                    v4 ->
                                                                                                                    addInt
                                                                                                                      (coe
                                                                                                                         (1 ::
                                                                                                                            Integer))
                                                                                                                      (coe
                                                                                                                         v4)))
                                                                                                              (coe
                                                                                                                 (0 ::
                                                                                                                    Integer))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                 (coe
                                                                                                                    (\ v3 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                  (coe
                                                                                                                                     (\ v4
                                                                                                                                        v5 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                          erased
                                                                                                                                          (\ v6 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                               (coe
                                                                                                                                                  v4))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                             (coe
                                                                                                                                                eqInt
                                                                                                                                                (coe
                                                                                                                                                   v4)
                                                                                                                                                (coe
                                                                                                                                                   v5))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                (coe
                                                                                                                                                   eqInt
                                                                                                                                                   (coe
                                                                                                                                                      v4)
                                                                                                                                                   (coe
                                                                                                                                                      v5))))))))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v3))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  erased
                                                                                                                                  erased
                                                                                                                                  (\ v4 ->
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v4))
                                                                                                                                  (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                       (coe
                                                                                                                          v1)))))))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
                                                     (\ v3 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v3)))))
                                            (coe
                                               (\ v3 v4 v5 v6 v7 ->
                                                  coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                          (coe
                                                             MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                             (coe v1))))
                                                    v3 v4 v5
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.Function.Bundles.d_from_1726
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_specification_174
                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                erased erased
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                            (coe v1)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                   erased erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                         erased
                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                               (coe v0)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               erased erased
                                                                               (\ v8 ->
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (\ v8 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v9 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v8)))
                                                                                                        (coe
                                                                                                           v9))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                         erased
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                            (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                               erased
                                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                (coe
                                                                                                                   v1)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                  (coe
                                                                                                                                     (\ v8
                                                                                                                                        v9
                                                                                                                                        v10
                                                                                                                                        v11
                                                                                                                                        v12 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                               (coe
                                                                                                                                  (\ v8 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                                (coe
                                                                                                                                                   (\ v9
                                                                                                                                                      v10 ->
                                                                                                                                                      coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                                        erased
                                                                                                                                                        (\ v11 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                                             (coe
                                                                                                                                                                v9))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              eqInt
                                                                                                                                                              (coe
                                                                                                                                                                 v9)
                                                                                                                                                              (coe
                                                                                                                                                                 v10))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                              (coe
                                                                                                                                                                 eqInt
                                                                                                                                                                 (coe
                                                                                                                                                                    v9)
                                                                                                                                                                 (coe
                                                                                                                                                                    v10))))))))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v8))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                erased
                                                                                                                                                (\ v9 ->
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v9))
                                                                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                                      (coe
                                                                                                                                                         v1))))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                                     (coe
                                                                                                                                        v1)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                                            (coe
                                                                                                                               (\ v8
                                                                                                                                  v9 ->
                                                                                                                                  addInt
                                                                                                                                    (coe
                                                                                                                                       (1 ::
                                                                                                                                          Integer))
                                                                                                                                    (coe
                                                                                                                                       v9)))
                                                                                                                            (coe
                                                                                                                               (0 ::
                                                                                                                                  Integer))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                               (coe
                                                                                                                                  (\ v8 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                                (coe
                                                                                                                                                   (\ v9
                                                                                                                                                      v10 ->
                                                                                                                                                      coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                                        erased
                                                                                                                                                        (\ v11 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                                             (coe
                                                                                                                                                                v9))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              eqInt
                                                                                                                                                              (coe
                                                                                                                                                                 v9)
                                                                                                                                                              (coe
                                                                                                                                                                 v10))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                              (coe
                                                                                                                                                                 eqInt
                                                                                                                                                                 (coe
                                                                                                                                                                    v9)
                                                                                                                                                                 (coe
                                                                                                                                                                    v10))))))))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v8))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                erased
                                                                                                                                                (\ v9 ->
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v9))
                                                                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                                      (coe
                                                                                                                                                         v1))))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                                     (coe
                                                                                                                                        v1)))))))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
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
                                                                MAlonzo.Code.Axiom.Set.d_specification_174
                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                erased erased
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                            (coe v1)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                   erased erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                         erased
                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                               (coe v0)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               erased erased
                                                                               (\ v8 ->
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (\ v8 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v9 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v8)))
                                                                                                        (coe
                                                                                                           v9))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                         erased
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                            (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                               erased
                                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                (coe
                                                                                                                   v1)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                  (coe
                                                                                                                                     (\ v8
                                                                                                                                        v9
                                                                                                                                        v10
                                                                                                                                        v11
                                                                                                                                        v12 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                               (coe
                                                                                                                                  (\ v8 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                                (coe
                                                                                                                                                   (\ v9
                                                                                                                                                      v10 ->
                                                                                                                                                      coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                                        erased
                                                                                                                                                        (\ v11 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                                             (coe
                                                                                                                                                                v9))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              eqInt
                                                                                                                                                              (coe
                                                                                                                                                                 v9)
                                                                                                                                                              (coe
                                                                                                                                                                 v10))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                              (coe
                                                                                                                                                                 eqInt
                                                                                                                                                                 (coe
                                                                                                                                                                    v9)
                                                                                                                                                                 (coe
                                                                                                                                                                    v10))))))))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v8))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                erased
                                                                                                                                                (\ v9 ->
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v9))
                                                                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                                      (coe
                                                                                                                                                         v1))))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                                     (coe
                                                                                                                                        v1)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                                            (coe
                                                                                                                               (\ v8
                                                                                                                                  v9 ->
                                                                                                                                  addInt
                                                                                                                                    (coe
                                                                                                                                       (1 ::
                                                                                                                                          Integer))
                                                                                                                                    (coe
                                                                                                                                       v9)))
                                                                                                                            (coe
                                                                                                                               (0 ::
                                                                                                                                  Integer))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                               (coe
                                                                                                                                  (\ v8 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                                (coe
                                                                                                                                                   (\ v9
                                                                                                                                                      v10 ->
                                                                                                                                                      coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                                        erased
                                                                                                                                                        (\ v11 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                                             (coe
                                                                                                                                                                v9))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              eqInt
                                                                                                                                                              (coe
                                                                                                                                                                 v9)
                                                                                                                                                              (coe
                                                                                                                                                                 v10))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                              (coe
                                                                                                                                                                 eqInt
                                                                                                                                                                 (coe
                                                                                                                                                                    v9)
                                                                                                                                                                 (coe
                                                                                                                                                                    v10))))))))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v8))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                erased
                                                                                                                                                (\ v9 ->
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v9))
                                                                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                                      (coe
                                                                                                                                                         v1))))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                                     (coe
                                                                                                                                        v1)))))))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
                                                                   (\ v8 ->
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v3) (coe v5)))
                                                          v7)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                            (coe
                                               MAlonzo.Code.Ledger.Certs.d_dState_960
                                               (coe
                                                  MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                  (coe
                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                     (coe v1))))))
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_dreps_946
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_gState_964
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                               (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_gState_964
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                               (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_treasury_152
                                         (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v1))))
                                   (coe
                                      MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                                      (coe
                                         MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_cc_864
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_constitution_866
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_pv_868
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_pparams_870
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                     (coe
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
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
                                            MAlonzo.Code.Axiom.Set.d_listing_204
                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
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
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
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
                                                       MAlonzo.Code.Axiom.Set.d_replacement_196
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       erased erased
                                                       (\ v4 ->
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v4))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_unions_184
                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                             erased
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                   erased
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                            (coe v1)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_listing_204
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               erased
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                        (coe v0)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                              (coe
                                                                                                 (\ v4
                                                                                                    v5
                                                                                                    v6
                                                                                                    v7
                                                                                                    v8 ->
                                                                                                    coe
                                                                                                      MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                           (coe
                                                                                              (\ v4 ->
                                                                                                 coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                            (coe
                                                                                                               (\ v5
                                                                                                                  v6 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                    erased
                                                                                                                    (\ v7 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                         (coe
                                                                                                                            v5))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          eqInt
                                                                                                                          (coe
                                                                                                                             v5)
                                                                                                                          (coe
                                                                                                                             v6))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                          (coe
                                                                                                                             eqInt
                                                                                                                             (coe
                                                                                                                                v5)
                                                                                                                             (coe
                                                                                                                                v6))))))))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v4))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                            erased
                                                                                                            erased
                                                                                                            (\ v5 ->
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v5))
                                                                                                            (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                  (coe
                                                                                                                     v1))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                 (coe
                                                                                                    v1)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                        (coe
                                                                                           (\ v4
                                                                                              v5 ->
                                                                                              addInt
                                                                                                (coe
                                                                                                   (1 ::
                                                                                                      Integer))
                                                                                                (coe
                                                                                                   v5)))
                                                                                        (coe
                                                                                           (0 ::
                                                                                              Integer))
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                           (coe
                                                                                              (\ v4 ->
                                                                                                 coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                            (coe
                                                                                                               (\ v5
                                                                                                                  v6 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                    erased
                                                                                                                    (\ v7 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                         (coe
                                                                                                                            v5))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          eqInt
                                                                                                                          (coe
                                                                                                                             v5)
                                                                                                                          (coe
                                                                                                                             v6))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                          (coe
                                                                                                                             eqInt
                                                                                                                             (coe
                                                                                                                                v5)
                                                                                                                             (coe
                                                                                                                                v6))))))))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v4))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                            erased
                                                                                                            erased
                                                                                                            (\ v5 ->
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v5))
                                                                                                            (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                  (coe
                                                                                                                     v1))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                 (coe
                                                                                                    v1)))))))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                      (coe
                                         MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                         (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))))
                             (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v1))
                             (coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v1)) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_dreps_946
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_gState_964
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_2164
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'ls_32711
                                 (coe v3))))))
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_32727
                             (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))
                             (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)) (coe v2)
                             (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v1))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   du_SNAP'45'total_2076 (coe v0)
                                   (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))
                                   (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v1))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total''_2220
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11511
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.du_mkStakeDistrs_2524 (coe v0)
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_mark_2292
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_SNAP'45'total_2076 (coe v0)
                                                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Epoch.d_ss_2316
                                                     (coe v1)))))
                                         (coe
                                            MAlonzo.Code.Data.List.Base.du_filter_664
                                            (coe
                                               (\ v3 ->
                                                  coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
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
                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                             erased erased
                                                             (\ v4 ->
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v4))
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                   erased
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                         erased
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                  (coe v1)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                              (coe
                                                                                                 v0)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                          (coe
                                                                                                             v1))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                          (coe
                                                                                                             v1))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                          (coe
                                                                                                             v1))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                          (coe
                                                                                                             v1))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                          erased
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                    (coe
                                                                                                       (\ v4
                                                                                                          v5
                                                                                                          v6
                                                                                                          v7
                                                                                                          v8 ->
                                                                                                          coe
                                                                                                            MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                 (coe
                                                                                                    (\ v4 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                  (coe
                                                                                                                     v0))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                  (coe
                                                                                                                     (\ v5
                                                                                                                        v6 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                          erased
                                                                                                                          (\ v7 ->
                                                                                                                             coe
                                                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                               (coe
                                                                                                                                  v5))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                             (coe
                                                                                                                                eqInt
                                                                                                                                (coe
                                                                                                                                   v5)
                                                                                                                                (coe
                                                                                                                                   v6))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                (coe
                                                                                                                                   eqInt
                                                                                                                                   (coe
                                                                                                                                      v5)
                                                                                                                                   (coe
                                                                                                                                      v6))))))))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v4))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                  erased
                                                                                                                  erased
                                                                                                                  (\ v5 ->
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          v5))
                                                                                                                  (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                        (coe
                                                                                                                           v1))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                       (coe
                                                                                                          v1)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                              (coe
                                                                                                 (\ v4
                                                                                                    v5 ->
                                                                                                    addInt
                                                                                                      (coe
                                                                                                         (1 ::
                                                                                                            Integer))
                                                                                                      (coe
                                                                                                         v5)))
                                                                                              (coe
                                                                                                 (0 ::
                                                                                                    Integer))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                 (coe
                                                                                                    (\ v4 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                  (coe
                                                                                                                     v0))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                  (coe
                                                                                                                     (\ v5
                                                                                                                        v6 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                          erased
                                                                                                                          (\ v7 ->
                                                                                                                             coe
                                                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                               (coe
                                                                                                                                  v5))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                             (coe
                                                                                                                                eqInt
                                                                                                                                (coe
                                                                                                                                   v5)
                                                                                                                                (coe
                                                                                                                                   v6))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                (coe
                                                                                                                                   eqInt
                                                                                                                                   (coe
                                                                                                                                      v5)
                                                                                                                                   (coe
                                                                                                                                      v6))))))))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v4))
                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                  erased
                                                                                                                  erased
                                                                                                                  (\ v5 ->
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          v5))
                                                                                                                  (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                        (coe
                                                                                                                           v1))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                       (coe
                                                                                                          v1)))))))))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                               (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_174
                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                     (coe
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                  erased erased
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                              (coe v1)))))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                     (MAlonzo.Code.Axiom.Set.d_sp_150
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                     erased erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                           erased
                                                           (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                 (coe v0)))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 erased erased
                                                                 (\ v3 ->
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v3)))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_unions_184
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       erased
                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (\ v3 ->
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased erased
                                                                                     (\ v4 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v3)))
                                                                                          (coe v4))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                       (coe
                                                                                                          v1)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                  (coe
                                                                                                     v1)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     erased
                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                                              (coe
                                                                                                                 v0)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                          (coe
                                                                                                                             v1))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                          (coe
                                                                                                                             v1))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                          (coe
                                                                                                                             v1))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                          (coe
                                                                                                                             v1))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                          erased
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                    (coe
                                                                                                                       (\ v3
                                                                                                                          v4
                                                                                                                          v5
                                                                                                                          v6
                                                                                                                          v7 ->
                                                                                                                          coe
                                                                                                                            MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                 (coe
                                                                                                                    (\ v3 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                  (coe
                                                                                                                                     (\ v4
                                                                                                                                        v5 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                          erased
                                                                                                                                          (\ v6 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                               (coe
                                                                                                                                                  v4))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                             (coe
                                                                                                                                                eqInt
                                                                                                                                                (coe
                                                                                                                                                   v4)
                                                                                                                                                (coe
                                                                                                                                                   v5))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                (coe
                                                                                                                                                   eqInt
                                                                                                                                                   (coe
                                                                                                                                                      v4)
                                                                                                                                                   (coe
                                                                                                                                                      v5))))))))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v3))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  erased
                                                                                                                                  erased
                                                                                                                                  (\ v4 ->
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v4))
                                                                                                                                  (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                       (coe
                                                                                                                          v1)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                              (coe
                                                                                                                 (\ v3
                                                                                                                    v4 ->
                                                                                                                    addInt
                                                                                                                      (coe
                                                                                                                         (1 ::
                                                                                                                            Integer))
                                                                                                                      (coe
                                                                                                                         v4)))
                                                                                                              (coe
                                                                                                                 (0 ::
                                                                                                                    Integer))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                 (coe
                                                                                                                    (\ v3 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                  (coe
                                                                                                                                     (\ v4
                                                                                                                                        v5 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                          erased
                                                                                                                                          (\ v6 ->
                                                                                                                                             coe
                                                                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                               (coe
                                                                                                                                                  v4))
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                             (coe
                                                                                                                                                eqInt
                                                                                                                                                (coe
                                                                                                                                                   v4)
                                                                                                                                                (coe
                                                                                                                                                   v5))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                (coe
                                                                                                                                                   eqInt
                                                                                                                                                   (coe
                                                                                                                                                      v4)
                                                                                                                                                   (coe
                                                                                                                                                      v5))))))))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v3))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  erased
                                                                                                                                  erased
                                                                                                                                  (\ v4 ->
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v4))
                                                                                                                                  (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                       (coe
                                                                                                                          v1)))))))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
                                                     (\ v3 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v3)))))
                                            (coe
                                               (\ v3 v4 v5 v6 v7 ->
                                                  coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                          (coe
                                                             MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                             (coe v1))))
                                                    v3 v4 v5
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.Function.Bundles.d_from_1726
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_specification_174
                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                erased erased
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                            (coe v1)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                   erased erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                         erased
                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                               (coe v0)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               erased erased
                                                                               (\ v8 ->
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (\ v8 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v9 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v8)))
                                                                                                        (coe
                                                                                                           v9))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                         erased
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                            (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                               erased
                                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                (coe
                                                                                                                   v1)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                  (coe
                                                                                                                                     (\ v8
                                                                                                                                        v9
                                                                                                                                        v10
                                                                                                                                        v11
                                                                                                                                        v12 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                               (coe
                                                                                                                                  (\ v8 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                                (coe
                                                                                                                                                   (\ v9
                                                                                                                                                      v10 ->
                                                                                                                                                      coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                                        erased
                                                                                                                                                        (\ v11 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                                             (coe
                                                                                                                                                                v9))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              eqInt
                                                                                                                                                              (coe
                                                                                                                                                                 v9)
                                                                                                                                                              (coe
                                                                                                                                                                 v10))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                              (coe
                                                                                                                                                                 eqInt
                                                                                                                                                                 (coe
                                                                                                                                                                    v9)
                                                                                                                                                                 (coe
                                                                                                                                                                    v10))))))))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v8))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                erased
                                                                                                                                                (\ v9 ->
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v9))
                                                                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                                      (coe
                                                                                                                                                         v1))))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                                     (coe
                                                                                                                                        v1)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                                            (coe
                                                                                                                               (\ v8
                                                                                                                                  v9 ->
                                                                                                                                  addInt
                                                                                                                                    (coe
                                                                                                                                       (1 ::
                                                                                                                                          Integer))
                                                                                                                                    (coe
                                                                                                                                       v9)))
                                                                                                                            (coe
                                                                                                                               (0 ::
                                                                                                                                  Integer))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                               (coe
                                                                                                                                  (\ v8 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                                (coe
                                                                                                                                                   (\ v9
                                                                                                                                                      v10 ->
                                                                                                                                                      coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                                        erased
                                                                                                                                                        (\ v11 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                                             (coe
                                                                                                                                                                v9))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              eqInt
                                                                                                                                                              (coe
                                                                                                                                                                 v9)
                                                                                                                                                              (coe
                                                                                                                                                                 v10))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                              (coe
                                                                                                                                                                 eqInt
                                                                                                                                                                 (coe
                                                                                                                                                                    v9)
                                                                                                                                                                 (coe
                                                                                                                                                                    v10))))))))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v8))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                erased
                                                                                                                                                (\ v9 ->
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v9))
                                                                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                                      (coe
                                                                                                                                                         v1))))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                                     (coe
                                                                                                                                        v1)))))))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
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
                                                                MAlonzo.Code.Axiom.Set.d_specification_174
                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                erased erased
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                            (coe v1)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                   erased erased erased
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                      erased erased
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                         erased
                                                                         (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                               (coe v0)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               erased erased
                                                                               (\ v8 ->
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                     erased
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (\ v8 ->
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v9 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v8)))
                                                                                                        (coe
                                                                                                           v9))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                         erased
                                                                                                         erased
                                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                     (coe
                                                                                                                        v1)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                            (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                            erased
                                                                                                            erased
                                                                                                            erased
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                               erased
                                                                                                               (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
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
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                (coe
                                                                                                                   v1)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                  (coe
                                                                                                                                     (\ v8
                                                                                                                                        v9
                                                                                                                                        v10
                                                                                                                                        v11
                                                                                                                                        v12 ->
                                                                                                                                        coe
                                                                                                                                          MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                               (coe
                                                                                                                                  (\ v8 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                                (coe
                                                                                                                                                   (\ v9
                                                                                                                                                      v10 ->
                                                                                                                                                      coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                                        erased
                                                                                                                                                        (\ v11 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                                             (coe
                                                                                                                                                                v9))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              eqInt
                                                                                                                                                              (coe
                                                                                                                                                                 v9)
                                                                                                                                                              (coe
                                                                                                                                                                 v10))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                              (coe
                                                                                                                                                                 eqInt
                                                                                                                                                                 (coe
                                                                                                                                                                    v9)
                                                                                                                                                                 (coe
                                                                                                                                                                    v10))))))))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v8))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                erased
                                                                                                                                                (\ v9 ->
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v9))
                                                                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                                      (coe
                                                                                                                                                         v1))))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                                     (coe
                                                                                                                                        v1)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                                            (coe
                                                                                                                               (\ v8
                                                                                                                                  v9 ->
                                                                                                                                  addInt
                                                                                                                                    (coe
                                                                                                                                       (1 ::
                                                                                                                                          Integer))
                                                                                                                                    (coe
                                                                                                                                       v9)))
                                                                                                                            (coe
                                                                                                                               (0 ::
                                                                                                                                  Integer))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                                                               (coe
                                                                                                                                  (\ v8 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                                                                (coe
                                                                                                                                                   v0))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                                                (coe
                                                                                                                                                   (\ v9
                                                                                                                                                      v10 ->
                                                                                                                                                      coe
                                                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                                                        erased
                                                                                                                                                        (\ v11 ->
                                                                                                                                                           coe
                                                                                                                                                             MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                                                             (coe
                                                                                                                                                                v9))
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                                           (coe
                                                                                                                                                              eqInt
                                                                                                                                                              (coe
                                                                                                                                                                 v9)
                                                                                                                                                              (coe
                                                                                                                                                                 v10))
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                                                              (coe
                                                                                                                                                                 eqInt
                                                                                                                                                                 (coe
                                                                                                                                                                    v9)
                                                                                                                                                                 (coe
                                                                                                                                                                    v10))))))))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v8))
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                erased
                                                                                                                                                (\ v9 ->
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                     (coe
                                                                                                                                                        v9))
                                                                                                                                                (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                                                      (coe
                                                                                                                                                         v1))))))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                                                     (coe
                                                                                                                                        v1)))))))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
                                                                   (\ v8 ->
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe v3) (coe v5)))
                                                          v7)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                            (coe
                                               MAlonzo.Code.Ledger.Certs.d_dState_960
                                               (coe
                                                  MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                  (coe
                                                     MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                     (coe v1))))))
                                      (coe v2)
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_dreps_946
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_gState_964
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                               (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                         (coe
                                            MAlonzo.Code.Ledger.Certs.d_gState_964
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                               (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1)))))
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_treasury_152
                                         (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v1))))
                                   (coe
                                      MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                                      (coe
                                         MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_cc_864
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_constitution_866
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_pv_868
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Ledger.Enact.d_pparams_870
                                            (coe
                                               MAlonzo.Code.Ledger.Ratify.d_es_2030
                                               (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                  (MAlonzo.Code.Axiom.Set.d_th_1458
                                                     (coe
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
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
                                            MAlonzo.Code.Axiom.Set.d_listing_204
                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
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
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
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
                                                       MAlonzo.Code.Axiom.Set.d_replacement_196
                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       erased erased
                                                       (\ v4 ->
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v4))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_unions_184
                                                             (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                             erased
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_listing_204
                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                   erased
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                            (coe v1)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_listing_204
                                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               erased
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Epoch.du_step_2458
                                                                                        (coe v0)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                    (coe
                                                                                                       v1))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                              (coe
                                                                                                 (\ v4
                                                                                                    v5
                                                                                                    v6
                                                                                                    v7
                                                                                                    v8 ->
                                                                                                    coe
                                                                                                      MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                           (coe
                                                                                              (\ v4 ->
                                                                                                 coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                            (coe
                                                                                                               (\ v5
                                                                                                                  v6 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                    erased
                                                                                                                    (\ v7 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                         (coe
                                                                                                                            v5))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          eqInt
                                                                                                                          (coe
                                                                                                                             v5)
                                                                                                                          (coe
                                                                                                                             v6))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                          (coe
                                                                                                                             eqInt
                                                                                                                             (coe
                                                                                                                                v5)
                                                                                                                             (coe
                                                                                                                                v6))))))))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v4))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                            erased
                                                                                                            erased
                                                                                                            (\ v5 ->
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v5))
                                                                                                            (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                  (coe
                                                                                                                     v1))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                 (coe
                                                                                                    v1)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                        (coe
                                                                                           (\ v4
                                                                                              v5 ->
                                                                                              addInt
                                                                                                (coe
                                                                                                   (1 ::
                                                                                                      Integer))
                                                                                                (coe
                                                                                                   v5)))
                                                                                        (coe
                                                                                           (0 ::
                                                                                              Integer))
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.List.Base.du_filter_664
                                                                                           (coe
                                                                                              (\ v4 ->
                                                                                                 coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                            (coe
                                                                                                               (\ v5
                                                                                                                  v6 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                                                                                                                    erased
                                                                                                                    (\ v7 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                                                                                                         (coe
                                                                                                                            v5))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          eqInt
                                                                                                                          (coe
                                                                                                                             v5)
                                                                                                                          (coe
                                                                                                                             v6))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_66
                                                                                                                          (coe
                                                                                                                             eqInt
                                                                                                                             (coe
                                                                                                                                v5)
                                                                                                                             (coe
                                                                                                                                v6))))))))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v4))
                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                            erased
                                                                                                            erased
                                                                                                            (\ v5 ->
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v5))
                                                                                                            (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                                                  (coe
                                                                                                                     v1))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                                                 (coe
                                                                                                    v1)))))))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                                      (coe
                                         MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                         (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))))
                             (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v1))
                             (coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v1)) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_gState_964
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_2164
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'ls_32711
                                 (coe v3))))))
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_treasury_152
                     (coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v1))))
               (coe
                  MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                  (coe
                     MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_cc_864
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_2030
                           (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_constitution_866
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_2030
                           (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_pv_868
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_2030
                           (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.d_pparams_870
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_2030
                           (coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1))))
                     (coe
                        MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                        (coe
                           MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                  (coe
                     MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                     (coe
                        MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Set_296
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
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
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                (coe
                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                (coe
                                   MAlonzo.Code.Interface.IsSet.d_toSet_482
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                   (let v4
                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                    coe
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_map_386
                                         (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v4))
                                         (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                         (let v5
                                                = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du__'8746'__668
                                               (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v5))
                                               (coe
                                                  MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                  (coe
                                                     MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v1)))
                                               (let v6
                                                      = let v6
                                                              = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_fromList_416
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                (coe v6))) in
                                                coe
                                                  (let v7
                                                         = coe
                                                             MAlonzo.Code.Ledger.Epoch.du_getOrphans_2448
                                                             (coe v0)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Enact.d_cc_864
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                         (coe v1))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Enact.d_constitution_866
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                         (coe v1))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Enact.d_pv_868
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                         (coe v1))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Ratify.d_es_2030
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                         (coe v1))))
                                                                (coe
                                                                   MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
                                                                   (coe
                                                                      MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_302
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                                                             (coe
                                                                MAlonzo.Code.Data.List.Base.du_filter_664
                                                                (coe
                                                                   (\ v7 ->
                                                                      coe
                                                                        MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                        (coe
                                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                 () erased () erased
                                                                                 (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216
                                                                                    (coe v0))
                                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v7))
                                                                              (coe
                                                                                 MAlonzo.Code.Interface.IsSet.d_toSet_482
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_544)
                                                                                 (let v8
                                                                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.du_map_386
                                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe v8))
                                                                                       (\ v9 ->
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               v9))
                                                                                       (MAlonzo.Code.Ledger.Ratify.d_removed_2032
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Epoch.d_fut_2322
                                                                                             (coe
                                                                                                v1)))))))
                                                                           (coe
                                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_ls_2318
                                                                      (coe v1)))) in
                                                   coe (coe v6 v7)))))))))
                             (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                  (coe
                     MAlonzo.Code.Ledger.Ledger.d_govSt_2162
                     (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               du_SNAP'45'total_2076 (coe v0)
               (coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v1))
               (coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v1)))))
-- Ledger.Epoch.Properties._.EPOCH-complete
d_EPOCH'45'complete_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2566 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_2142 = erased
-- Ledger.Epoch.Properties._._.ty
d_ty_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'SNAP'10632'__2534 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270 -> ()
d_ty_2154 = erased
-- Ledger.Epoch.Properties._.EPOCH-total'
d_EPOCH'45'total''_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_2164 v0 ~v1 v2 v3
  = du_EPOCH'45'total''_2164 v0 v2 v3
du_EPOCH'45'total''_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_2164 v0 v1 v2
  = coe du_EPOCH'45'total_2138 (coe v0) (coe v1) (coe v2)
-- Ledger.Epoch.Properties._.EPOCH-complete'
d_EPOCH'45'complete''_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2566 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_2168 = erased
-- Ledger.Epoch.Properties.Computational-EPOCH
d_Computational'45'EPOCH_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_2170 v0 ~v1
  = du_Computational'45'EPOCH_2170 v0
du_Computational'45'EPOCH_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_2170 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_2164 (coe v0) (coe v2) (coe v3)))
-- Ledger.Epoch.Properties._.NEWEPOCH-total
d_NEWEPOCH'45'total_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_2198 v0 ~v1 v2 v3
  = du_NEWEPOCH'45'total_2198 v0 v2 v3
du_NEWEPOCH'45'total_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_2198 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2340 v3 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0)))
                     v1
                     (coe
                        MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
                        (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__2304
                           (MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                              (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
                              v3)
                           (coe
                              MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
                              (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
                              (MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
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
                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2340
                                               (coe v1)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     du_EPOCH'45'total''_2164 (coe v0)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.du_applyRUpd_2396
                                                        (coe v0) (coe v10) (coe v4))
                                                     (coe v1)))
                                               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'New_2650
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_EPOCH'45'total''_2164 (coe v0)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.du_applyRUpd_2396
                                                           (coe v0) (coe v10) (coe v4))
                                                        (coe v1)))))
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'10215''8319''7497'_2340
                                               (coe v1)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     du_EPOCH'45'total''_2164 (coe v0) (coe v4)
                                                     (coe v1)))
                                               (coe v5))
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'No'45'Reward'45'Update_2654
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        du_EPOCH'45'total''_2164 (coe v0) (coe v4)
                                                        (coe v1)))))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                                 (coe MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'Not'45'New_2652))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Properties._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_2326 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2646 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_2232 = erased
-- Ledger.Epoch.Properties.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_2342 v0 ~v1
  = du_Computational'45'NEWEPOCH_2342 v0
du_Computational'45'NEWEPOCH_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_2342 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_NEWEPOCH'45'total_2198 (coe v0) (coe v3) (coe v2)))
